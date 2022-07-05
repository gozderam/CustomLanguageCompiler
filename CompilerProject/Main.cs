using GardensPoint;
using System;
using System.Collections.Generic;
using System.Globalization;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading;


namespace CompilerProject
{
    public enum Errors
    {
        Syntax, 
        UndeclaredVariable, 
        VariableAlreadyDeclared, 
        OnlyIntOrDoubleInAddAndMulOp,
        WrongAssignmentTypeToBool,
        WrongAssignmentTypeToInt,
        WrongAssignmentTypeToDouble,
        OnlyBoolInLogicalOp,
        InEqOrNotEqBothParametersBool,
        InLLEGGEBothParametersIntDouble,
        OnlyIntBitOp,
        OnlyIntOrDoubleUnaryMinus,
        OnlyIntBitNeg,
        OnlyBoolLogicalNeg,
        OnlyBoolInIfExp,
        OnlyBoolInWhileExp,
        OnlyIntOrDoubleRead,
        OnlyIntWriteHex,
        OnlyIntReadHex,
        OnlyIntOrDoubleConversiontoDouble
    }
    public enum Types
    {
        None, // only expression have types - None for statements
        Int, Bool, Double
    }
    public struct SymbolInfo
    {
        public Types Type { get; }
        public SymbolInfo(Types type)
        {
            this.Type = type;
        }
    }

    public class Compiler
    {
        private static StreamWriter sw;
        private static int nr = 0;
        public static int ErrorsCount { get; set; } = 0;
        public static int LineNumber { get; set; } = 1;
        public static Dictionary<Errors, string> ErrorToMessage { get; } = new Dictionary<Errors, string>() {
            {Errors.Syntax, "syntax error" },
            {Errors.UndeclaredVariable, "undeclared varaible" },
            {Errors.VariableAlreadyDeclared, "variable already declared" },
            {Errors.OnlyIntOrDoubleInAddAndMulOp, "only int or double are valid multiplicative and additive operators parameters' types" },
            {Errors.WrongAssignmentTypeToBool, "cannot convert assignment type to bool" },
            {Errors.WrongAssignmentTypeToInt, "cannot convert assignment type to int" },
            {Errors.WrongAssignmentTypeToDouble, "cannot convert assignment type to double" },
            {Errors.OnlyBoolInLogicalOp, "only bool is valid logical operators parameters' types" },
            {Errors.InEqOrNotEqBothParametersBool, "in 'equal' and 'not equal' operators both parameters have to be of type bool or both of type int/double" },
            {Errors.InLLEGGEBothParametersIntDouble, "in 'less', 'less or equal', 'greater', 'greater or equal' operators both parameters have to be of type int/double" },
            {Errors.OnlyIntBitOp, "only int is valid bit operator parameter type" },
            {Errors.OnlyIntOrDoubleUnaryMinus, "only int and double are valid unary minus parameter type" },
            {Errors.OnlyIntBitNeg, "only int is a valid bit negation parameter type" },
            {Errors.OnlyBoolLogicalNeg, "only bool is a valid logical negation parameter type" },
            {Errors.OnlyBoolInIfExp, "only bool is a valid if statement expression type" },
            {Errors.OnlyBoolInWhileExp, "only bool is a valid while statement expression type" },
            {Errors.OnlyIntOrDoubleRead, "only int and double can be read" },
            {Errors.OnlyIntWriteHex, "only int can be written in hex" },
            {Errors.OnlyIntReadHex, "only int can be read in hex" },
            {Errors.OnlyIntOrDoubleConversiontoDouble, "only int and double can be converted to double" },

        };
        public static Dictionary<Types, string> TypeToLLVMCode { get; }
         = new Dictionary<Types, string>()
         { { Types.Int, "i32" },
             { Types.Bool, "i1"},
             { Types.Double, "double"} };

        public static IDictionary<Ident, SymbolInfo> SymbolTable { get; } = new Dictionary<Ident, SymbolInfo>();
        public static IList<(string constName, string val, int length)> ConstTexts { get; } = new List<(string constName, string val, int length)>();

        public static int Main(string[] args)
        {
            Thread.CurrentThread.CurrentCulture = CultureInfo.InvariantCulture;

            string file;
            FileStream source;
            Console.WriteLine("\n=== MINI Language Compiler ===");
            if (args.Length >= 1)
                file = args[0];
            else
                return 2;
            try
            {
                using (source = new FileStream(file, FileMode.Open))
                {
                    Scanner scanner = new Scanner(source);
                    Parser parser = new Parser(scanner);
                    using (sw = new StreamWriter(file + ".ll"))
                    {
                        var parseRes = parser.Parse();
                        sw.Close();
                        source.Close();

                        if (Compiler.ErrorsCount == 0 && parseRes == true)
                            Console.WriteLine("\n=====\tcompilation successful\n");
                        else
                        {
                            if (parseRes == false) // end of fie unexpected
                                Compiler.AnnounceError("syntax error", 1);

                            Console.WriteLine("\n=====\tcompilation failed");
                            Console.WriteLine($"{Compiler.ErrorsCount} errors detected\n");
                            File.Delete(file + ".ll");
                        }
                        if (ErrorsCount == 0)
                            return 0;
                        else
                            return 1;
                    }
                }

            }
            catch (Exception e)
            {
                Console.WriteLine("\n" + e.Message);
                return 1;
            } 
        }

        public static string NewTemp()
        {
            return string.Format($"%t_{++nr}");
        }

        public static string NewTempLabel()
        {
            return string.Format($"lab_{++nr}");
        }

        public static string NewConst()
        {
            return string.Format($"@const_{++nr}");
        }

        public static void EmitCode(string instr = null)
        {
            sw.WriteLine(instr);
        }

        public static void EmitCode(string instr, params object[] args)
        {
            sw.WriteLine(instr, args);
        }

        public static bool AreIdentifiersDefined(params Ident[] identifiers)
        {
            for (int i = 0; i < identifiers.Length; i++)
                if (SymbolTable.ContainsKey(identifiers[i]))
                    return true;
            return false;
        }

        public static void AnnounceError(string message, int lineNumber)
        {
            Console.WriteLine($"Compilation error in line {lineNumber}: {message}.");
            ErrorsCount++;
        }
    }

    public abstract class SyntaxTree
    {
        public Types Type { get; set; }
        public int LineNumber { get; }
        public SyntaxTree(Types type, int lineNo)
        {
            Type = type;
            LineNumber = lineNo;
        }
        public abstract Types CheckType();
        public abstract string GenCode();
    }

    public class Code : SyntaxTree
    {
        private readonly SyntaxTree program;
        public Code(int lineNo, SyntaxTree program)
            : base(Types.None, lineNo)
        {
            this.program = program;
        }
        public override string GenCode()
        {
            GenProlog();
            program.GenCode();
            GenEpilog();
            return null;
        }
        private void GenProlog()
        {
            Compiler.EmitCode("; prolog");
            Compiler.EmitCode("@int_res = constant [3 x i8] c\"%d\\00\"");
            Compiler.EmitCode("@int_res_hex = constant [5 x i8] c\"0X%X\\00\"");
            Compiler.EmitCode("@double_res = constant [4 x i8] c\"%lf\\00\"");
            Compiler.EmitCode("@bool_res_true = constant [5 x i8] c\"True\\00\"");
            Compiler.EmitCode("@bool_res_false = constant [6 x i8] c\"False\\00\"");
            Compiler.EmitCode("@int_read = constant [3 x i8] c\"%d\\00\"");
            Compiler.EmitCode("@int_hex_read = constant [3 x i8] c\"%x\\00\"");
            Compiler.EmitCode("@double_read = constant [4 x i8] c\"%lf\\00\"");
            GenConstTexts();
            Compiler.EmitCode("declare i32 @printf(i8*, ...)");
            Compiler.EmitCode("declare i32 @scanf(i8*, ...)");
            Compiler.EmitCode("define i32 @main()");
            Compiler.EmitCode("{");
        }
        private void GenConstTexts()
        {
            foreach (var c in Compiler.ConstTexts)
            {
                var toWriteVal = c.val.Replace("\n", "\\0A");
                Compiler.EmitCode("{0} = constant [{1} x i8] c\"{2}\"", c.constName, c.length, toWriteVal);
            }
        }

        private void GenEpilog()
        {
            Compiler.EmitCode("ret i32 0");
            Compiler.EmitCode("}");
        }

        public override Types CheckType()
        {
            if(program !=null) // can be null if syntax error occured, analogously below
                program.CheckType();
            return Types.None;
        }
    }

    public class ProgramCode : SyntaxTree
    {
        private readonly SyntaxTree[] declarations;
        private readonly SyntaxTree[] statements;
        public ProgramCode(int lineNo, SyntaxTree[] declarations, SyntaxTree[] statements)
            : base(Types.None, lineNo)
        {
            this.declarations = declarations;
            this.statements = statements;
        }
        public override string GenCode()
        {
            // null when empty production occured
            if (declarations != null)
                foreach (var d in declarations)
                    d.GenCode();
            // null when empty production occured
            if (statements != null)
                foreach (var s in statements)
                    s.GenCode();
            return null;
        }

        public override Types CheckType()
        {
            // declarations == null when empty production 
            if (declarations != null)
                foreach (var d in declarations)
                    if(d!=null) // d can be null when syntax error occured  
                        d.CheckType();
            if (statements != null)
                foreach (var s in statements)
                    if (s != null)
                        s.CheckType();

            this.Type = Types.None;

            return Types.None;
        }
    }

    public class BlockStm : SyntaxTree
    {
        private readonly SyntaxTree[] operations;
        public BlockStm(int lineNo, SyntaxTree[] operations)
            : base(Types.None, lineNo)
        {
            this.operations = operations ?? new SyntaxTree[0];
        }
        public override string GenCode()
        {
            foreach (var op in operations)
                op.GenCode();
            return null;
        }

        public override Types CheckType()
        {
            if (operations != null)
            {
                foreach (var o in operations)
                {
                    if (o != null) // o is null when there was a syntax error in operation o
                        o.CheckType();
                }
            }

            return Types.None;
        }
    }

    public class ExpStm : SyntaxTree
    {
        private readonly SyntaxTree[] operations; 
        public ExpStm(int lineNo, params SyntaxTree[] operations)
            : base(Types.None, lineNo)
        {
            this.operations = operations ?? new SyntaxTree[0];
        }
        public override string GenCode()
        {
            foreach (var op in operations)
                op.GenCode();
            return null;
        }

        public override Types CheckType()
        {
            if (operations != null)
            {
                foreach (var o in operations)
                    if(o!=null)
                        o.CheckType();
            }
            return Types.None;
        }
    }

    public class Ident : SyntaxTree
    {
        public string IdentName { get; }
        public Ident(int lineNo, string identName)
            : base(Types.None, lineNo)
        {
            IdentName = identName;
        }


        #region equal overwrite
        public override bool Equals(object obj) => this.Equals(obj as Ident);
        public bool Equals(Ident p)
        {
            if (p is null)
                return false;

            if (Object.ReferenceEquals(this, p)) // Optimization for a common success case.
                return true;

            if (this.GetType() != p.GetType()) // If run-time types are not exactly the same, return false.
                return false;

            return IdentName == p.IdentName; // Return true if the name match.
        }
        public override int GetHashCode() => IdentName.GetHashCode();
        public static bool operator ==(Ident lhs, Ident rhs)
        {
            if (lhs is null)
            {
                if (rhs is null)
                    return true;

                return false; // Only the left side is null.
            }
            return lhs.Equals(rhs); // Equals handles case of null on right side.
        }
        public static bool operator !=(Ident lhs, Ident rhs) => !(lhs == rhs);
        #endregion

        public override Types CheckType()
        {
            if (Compiler.SymbolTable.TryGetValue(this, out SymbolInfo symbolInfo))
            {
                Type = symbolInfo.Type;
                return Type;
            }
            else
                Compiler.AnnounceError(Compiler.ErrorToMessage[Errors.UndeclaredVariable], this.LineNumber);
            return Types.None;
        }

        public override string GenCode()
        {
            string w = Compiler.NewTemp();
            var type = Compiler.SymbolTable[this].Type;

            Compiler.EmitCode("{0} = load {1}, {1}* %{2}", w, Compiler.TypeToLLVMCode[type], IdentName);
            return w;
        }

    }

    public class DeclrStm : SyntaxTree
    {
        private readonly Ident[] identifiers;
        private readonly Types type;

        public DeclrStm(int lineNo, Types type, params Ident[] identifiers)
            : base(Types.None, lineNo)
        {
            this.type = type;
            this.identifiers = identifiers ?? new Ident[0];
            
            for (int i = 0; i < this.identifiers.Length; i++)
            {
                if (Compiler.AreIdentifiersDefined(this.identifiers[i]))
                    Compiler.AnnounceError(Compiler.ErrorToMessage[Errors.VariableAlreadyDeclared], this.LineNumber);
                else
                    Compiler.SymbolTable.Add(this.identifiers[i], new SymbolInfo(this.type));
            }
        }
        public override string GenCode()
        {
            for (int i = 0; i < identifiers.Length; i++)
                Compiler.EmitCode("%{0} = alloca {1}", identifiers[i].IdentName, Compiler.TypeToLLVMCode[type]);

            return null;
        }

        public override Types CheckType()
        {
            if (identifiers != null)
            {
                foreach (var i in identifiers)
                    if(i!=null)
                        i.CheckType();
            }
            return Types.None;
        }
    }

    abstract class BinaryOp : SyntaxTree
    {
        protected SyntaxTree left;
        protected SyntaxTree right;
        protected Tokens kind;

        public BinaryOp(int lineNo, SyntaxTree l, SyntaxTree r, Tokens k)
             : base(Types.None, lineNo)
        {
            left = l;
            right = r;
            kind = k;
        }
    }

    class LogicalOp : BinaryOp
    {
        public LogicalOp(int lineNo, SyntaxTree l, SyntaxTree r, Tokens k)
            : base(lineNo, l, r, k) { }

        public override Types CheckType()
        {
            if (left != null && right != null)
            {
                left.CheckType();
                right.CheckType();
                if (!(left.Type == Types.Bool && right.Type == Types.Bool))
                    Compiler.AnnounceError(Compiler.ErrorToMessage[Errors.OnlyBoolInLogicalOp], LineNumber);

            }
            Type = Types.Bool;
            return Type;
        }

        public override string GenCode()
        {
            // Short circuits evaluation

            string tw = Compiler.NewTemp();
            string tLeft = left.GenCode();
            string leftFinishLab = "left_finish" + Compiler.NewTempLabel();
            string rightStartLab = "right_start" + Compiler.NewTempLabel();
            string rightFinishLab = "right_finish" + Compiler.NewTempLabel();
            string endLab = "end_lab" + Compiler.NewTempLabel();

            Compiler.EmitCode("br label %{0}", leftFinishLab);
            Compiler.EmitCode("{0}:", leftFinishLab);

            if (kind == Tokens.LOGICAL_OR)
                Compiler.EmitCode("br i1 {0}, label %{1}, label %{2}", tLeft, endLab, rightStartLab);
            else if (kind == Tokens.LOGICAL_AND)
                Compiler.EmitCode("br i1 {0}, label %{1}, label %{2}", tLeft, rightStartLab, endLab);

            Compiler.EmitCode("{0}:", rightStartLab);
            string tRight = right.GenCode();
            Compiler.EmitCode("br label %{0}", rightFinishLab);
            Compiler.EmitCode("{0}:", rightFinishLab);
            Compiler.EmitCode("br label %{0}", endLab);
            Compiler.EmitCode("{0}:", endLab);
            Compiler.EmitCode("{0} = phi i1 [{1}, %{2}], [{3}, %{4}]", tw, tLeft, leftFinishLab, tRight, rightFinishLab);

            return tw;

        }
    }

    class RelationOp : BinaryOp
    {
        public RelationOp(int lineNo, SyntaxTree l, SyntaxTree r, Tokens k)
           : base(lineNo, l, r, k) { }

        public override Types CheckType()
        {
            if (left != null && right != null)
            {
                left.CheckType();
                right.CheckType();

                // for == or != bool is ok ...
                if (kind == Tokens.EQUAL || kind == Tokens.NOT_EQUAL)
                {
                    // ... but only when both are bool
                    if ((left.Type == Types.Bool && !(right.Type == Types.Bool)) || (right.Type == Types.Bool && !(left.Type == Types.Bool)))
                        Compiler.AnnounceError(Compiler.ErrorToMessage[Errors.InEqOrNotEqBothParametersBool], this.LineNumber);
                }
                // for <, <=, >, >= both must be double/int
                else if (kind == Tokens.LESS || kind == Tokens.LESS_OR_EQUAL || kind == Tokens.GREATER || kind == Tokens.GREATER_OR_EQUAL)
                {
                    if (!(
                        (left.Type == Types.Double || left.Type == Types.Int) &&
                        (right.Type == Types.Double || right.Type == Types.Int)
                        ))
                    {
                        Compiler.AnnounceError(Compiler.ErrorToMessage[Errors.InLLEGGEBothParametersIntDouble], this.LineNumber);
                    }
                }
            }

            Type = Types.Bool;
            return Type;
        }

        public override string GenCode()
        {
            string tw, t1, t2, t3, t4, tt;

            t1 = left.GenCode();
            if (left.Type == Types.Int && right.Type == Types.Double)
            {
                t2 = Compiler.NewTemp();
                Compiler.EmitCode($"{t2} = sitofp i32 {t1} to double");
            }
            else
                t2 = t1;

            t3 = right.GenCode();
            if (right.Type == Types.Int && left.Type == Types.Double)
            {
                t4 = Compiler.NewTemp();
                Compiler.EmitCode($"{t4} = sitofp i32 {t3} to double");
            }
            else
                t4 = t3;

            tw = Compiler.NewTemp();


            string operation = right.Type == Types.Double || left.Type == Types.Double ? "fcmp" : "icmp";
            string cmpArg = null;
            switch (kind)
            {
                case Tokens.EQUAL: cmpArg = operation=="icmp" ? "eq" : "oeq"; break;
                case Tokens.NOT_EQUAL: cmpArg = operation == "icmp" ? "ne" : "one" ; break;
                case Tokens.LESS: cmpArg = operation == "icmp" ? "slt" : "olt"; break;
                case Tokens.LESS_OR_EQUAL: cmpArg =  operation == "icmp" ? "sle" : "ole"; break;
                case Tokens.GREATER: cmpArg = operation == "icmp" ? "sgt" : "ogt"; break;
                case Tokens.GREATER_OR_EQUAL: cmpArg = operation == "icmp" ? "sge" : "oge" ; break;
            }
            Types comparisonType =
                right.Type == Types.Bool
                ? Types.Bool
                : (right.Type == Types.Double || left.Type == Types.Double
                    ? Types.Double
                    : Types.Int);

            Compiler.EmitCode("{0} = {1} {2} {3} {4}, {5}", tw, operation, cmpArg, Compiler.TypeToLLVMCode[comparisonType], t2, t4);

            return tw;
        }
    }

    class AddMulOp : BinaryOp
    {
        public AddMulOp(int lineNo, SyntaxTree l, SyntaxTree r, Tokens k)
            : base(lineNo, l, r, k) { }

        public override Types CheckType()
        {
            if (left != null && right != null)
            {
                left.CheckType();
                right.CheckType();
                if (!((left.Type == Types.Double || left.Type == Types.Int)
                    && ((right.Type == Types.Double || right.Type == Types.Int))))
                    Compiler.AnnounceError(Compiler.ErrorToMessage[Errors.OnlyIntOrDoubleInAddAndMulOp], this.LineNumber);

                Type = left.Type == Types.Int && right.Type == Types.Int ? Types.Int : Types.Double;
                return Type;
            }
            return Types.Int;
        }

        public override string GenCode()
        {
            string tw, t1, t2, t3, t4, tt;

            t1 = left.GenCode();
            if (left.Type != Type)
            {
                t2 = Compiler.NewTemp();
                Compiler.EmitCode($"{t2} = sitofp i32 {t1} to double");
            }
            else
                t2 = t1;
            t3 = right.GenCode();
            if (right.Type != Type)
            {
                t4 = Compiler.NewTemp();
                Compiler.EmitCode($"{t4} = sitofp i32 {t3} to double");
            }
            else
                t4 = t3;

            tw = Compiler.NewTemp();
            switch (kind)
            {
                case Tokens.PLUS:
                    Compiler.EmitCode("{0} = {1} {2}, {3}", tw, Type == Types.Int ? "add i32" : "fadd double", t2, t4);
                    break;
                case Tokens.MINUS:
                    Compiler.EmitCode("{0} = {1} {2}, {3}", tw, Type == Types.Int ? "sub i32" : "fsub double", t2, t4);
                    break;
                case Tokens.MULTIPLIES:
                    Compiler.EmitCode("{0} = {1} {2}, {3}", tw, Type == Types.Int ? "mul i32" : "fmul double", t2, t4);
                    break;
                case Tokens.DIVIDES:
                    Compiler.EmitCode("{0} = {1} {2}, {3}", tw, Type == Types.Int ? "sdiv i32" : "fdiv double", t2, t4);
                    break;
            }
            return tw;
        }
    }

    class BitOp : BinaryOp
    {
        public BitOp(int lineNo, SyntaxTree l, SyntaxTree r, Tokens k)
           : base(lineNo, l, r, k) { }

        public override Types CheckType()
        {
            if (left != null && right != null)
            {
                left.CheckType();
                right.CheckType();
                if (left.Type != Types.Int || right.Type != Types.Int)
                    Compiler.AnnounceError(Compiler.ErrorToMessage[Errors.OnlyIntBitOp], this.LineNumber);

            }
            Type = Types.Int;
            return Type;
        }

        public override string GenCode()
        {
            string tw, t1, t2;

            t1 = left.GenCode();
            t2 = right.GenCode();

            tw = Compiler.NewTemp();
            if (kind == Tokens.BIT_AND)
            {
                Compiler.EmitCode("{0} = {1} {2}, {3}", tw, "and i32", t1, t2);
            }
            else if (kind == Tokens.BIT_OR)
            {
                Compiler.EmitCode("{0} = {1} {2}, {3}", tw, "or i32", t1, t2);
            }
            return tw;
        }
    }

    class UnaryOp : SyntaxTree
    {
        SyntaxTree exp;
        Tokens kind;
        public UnaryOp(int lineNo, SyntaxTree exp, Tokens kind)
            : base(Types.None, lineNo)
        {
            this.exp = exp;
            this.kind = kind;
        }
        public override Types CheckType()
        {
            Types resType = Types.None;
            if (exp != null)
            {
                exp.CheckType();
                switch (kind)
                {
                    case Tokens.MINUS:
                        if (exp.Type != Types.Int && exp.Type != Types.Double)
                            Compiler.AnnounceError(Compiler.ErrorToMessage[Errors.OnlyIntOrDoubleUnaryMinus], this.LineNumber);
                        else
                            resType = exp.Type;
                        break;
                    case Tokens.BIT_NEG:
                        if (exp.Type != Types.Int)
                            Compiler.AnnounceError(Compiler.ErrorToMessage[Errors.OnlyIntBitNeg], this.LineNumber);
                        else
                            resType = Types.Int;
                        break;
                    case Tokens.LOGICAL_NEG:
                        if (exp.Type != Types.Bool)
                            Compiler.AnnounceError(Compiler.ErrorToMessage[Errors.OnlyBoolLogicalNeg], this.LineNumber);
                        else
                            resType = Types.Bool;
                        break;
                    case Tokens.INT_TP:
                        resType = Types.Int;
                        break;
                    case Tokens.DOUBLE_TP:
                        if (exp.Type != Types.Int && exp.Type != Types.Double)
                            Compiler.AnnounceError(Compiler.ErrorToMessage[Errors.OnlyIntOrDoubleConversiontoDouble], this.LineNumber);
                        else
                            resType = Types.Double;
                        break;
                }
            }

            Type = resType;
            return Type;
        }

        public override string GenCode()
        {
            string tw, t1;

            t1 = exp.GenCode();
            tw = Compiler.NewTemp();
            switch (kind)
            {
                case Tokens.MINUS:
                    Compiler.EmitCode("{0} = {1}, {2}", tw, exp.Type == Types.Int ? "sub i32 0" : "fsub double 0.0", t1);
                    break;
                case Tokens.BIT_NEG:
                    Compiler.EmitCode("{0} = xor i32 {1}, -1", tw, t1);
                    break;
                case Tokens.LOGICAL_NEG:
                    Compiler.EmitCode("{0} = xor i1 {1}, 1", tw, t1);
                    break;
                case Tokens.INT_TP:
                    if (exp.Type == Types.Int)
                        tw = t1;
                    else if (exp.Type == Types.Double)
                        Compiler.EmitCode("{0} = fptosi double {1} to i32", tw, t1);
                    else if (exp.Type == Types.Bool)
                        Compiler.EmitCode("{0} = zext i1 {1} to i32", tw, t1);
                    break;
                case Tokens.DOUBLE_TP:
                    if (exp.Type == Types.Int)
                        Compiler.EmitCode("{0} = sitofp i32 {1} to double", tw, t1);
                    else if (exp.Type == Types.Double)
                        tw = t1;
                    break;
            }
            return tw;
        }

    }


    class IntNumber : SyntaxTree
    {

        private int val;

        public IntNumber(int lineNo, int v)
         : base(Types.Int, lineNo) { val = v; }

        public override string GenCode()
        {
            return val.ToString();
        }

        public override Types CheckType()
        {
            Type = Types.Int;
            return Type;
        }

    }

    class DoubleNumber : SyntaxTree
    {

        private double val;

        public DoubleNumber(int lineNo, double v)
         : base(Types.Double, lineNo) { val = v; }

        public override string GenCode()
        {
            return String.Format("{0:0.000000000}", val);
        }

        public override Types CheckType()
        {
            Type = Types.Double;
            return Type;
        }
    }

    class BoolVal : SyntaxTree
    {
        private bool val;

        public BoolVal(int lineNo, bool v)
            : base(Types.Bool, lineNo) { val = v; }

        public override string GenCode()
        {
            return val ? "1" : "0";
        }

        public override Types CheckType()
        {
            Type = Types.Bool;
            return Type;
        }

    }

    class Assign : SyntaxTree
    {
        private Ident ident;
        private SyntaxTree exp;

        public Assign(int lineNo, Ident ident, SyntaxTree expression)
            : base(Types.None, lineNo)
        {
            if (!Compiler.AreIdentifiersDefined(ident))
                Compiler.AnnounceError(Compiler.ErrorToMessage[Errors.UndeclaredVariable], this.LineNumber);
            else
            {
                this.ident = ident;
                this.exp = expression;
            }
        }

        public override string GenCode()
        {
            string t1, t2;
            t1 = exp.GenCode();
            if (ident.Type == Types.Double && exp.Type == Types.Int)
            {
                t2 = Compiler.NewTemp();
                Compiler.EmitCode($"{t2} = sitofp i32 {t1} to double");

            }
            else
                t2 = t1;

            Compiler.EmitCode("store {0} {1}, {0}* %{2}", Compiler.TypeToLLVMCode[ident.Type], t2, ident.IdentName);
            return t2;
        }

        public override Types CheckType()
        {
            if (exp != null && ident != null)
            {
                exp.CheckType();
                ident.CheckType();
                switch (ident.Type)
                {
                    case Types.Bool:
                        if (!(exp.Type == Types.Bool)) 
                            Compiler.AnnounceError(Compiler.ErrorToMessage[Errors.WrongAssignmentTypeToBool], this.LineNumber);
                        break;
                    case Types.Int:
                        if (!(exp.Type == Types.Int))
                            Compiler.AnnounceError(Compiler.ErrorToMessage[Errors.WrongAssignmentTypeToInt], this.LineNumber);
                        break;
                    case Types.Double:
                        if (!(exp.Type == Types.Double || exp.Type == Types.Int))
                            Compiler.AnnounceError(Compiler.ErrorToMessage[Errors.WrongAssignmentTypeToDouble], this.LineNumber);
                        break;
                }
                Type = ident.Type;
                return Type;
            }
            return Types.None;
        }

    }

    class Text : SyntaxTree
    {
        string constName;

        public Text(int lineNo, string val) :
           base(Types.None, lineNo)
        {
            this.constName = Compiler.NewConst();

            var idxsToDel = new List<int>();
            val = val.Substring(1, val.Length - 2);
            StringBuilder sb = new StringBuilder();

            int len = 0;
            for (int i = 0; i < val.Length; i++)
            {
                if (val[i] == '\\' && i != val.Length - 1)
                {
                    if (val[i + 1] == '\\') // if next is slash add two slashes (interpreted by llvm as single)
                    {
                        sb.Append(val[i]);
                        sb.Append(val[i + 1]);
                        i++; // parsed ith and (ith + 1) item, so increase i
                        len++; // slashslash counts as one character in llvm
                    }
                    else if (val[i + 1] == 'n')
                    {
                        sb.Append(val[i]); // add slash
                        sb.Append("0A");
                        i++;  // pased ith and (ith + 1) item, so increase i
                        len++; // slash0A counts as one character in llvm
                    }
                    else if (val[i + 1] == '\"')
                    {
                        sb.Append(val[i]); // add slash
                        sb.Append("22");
                        i++;  // pased ith and (ith + 1) item, so increase i
                        len++; // slash22 counts as one character in llvm
                    }
                    //skip single slash 
                }
                else if (val[i] == '\\' && i == val.Length - 1) 
                    Compiler.AnnounceError("sytax error:  (esaped the finishing double qoute?)", this.LineNumber); // announce error and skip \ (doesnt fullfil the rule tht text has to be inside " " (cause last is escaped)
                else if (val[i] == '\"') // "  without slash before
                    Compiler.AnnounceError("sytax error:  (not escaped double qoute in the string?)", this.LineNumber); // announce error and skip "

                else // regular characters 
                {
                    sb.Append(val[i]);
                    len++;
                }
            }

            // add end of string character
            var newVal = sb.Append("\\00").ToString();
            len++;
            
            Compiler.ConstTexts.Add((constName, newVal, len));
        }



        public override Types CheckType()
        {
            return this.Type;
        }

        public override string GenCode()
        {
            return constName;
        }
    }

    class WriteExpStm : SyntaxTree
    {
        private SyntaxTree toWrite;
        public WriteExpStm(int lineNo, SyntaxTree exp)
            : base(Types.None, lineNo)
        {
            toWrite = exp;
        }
        public override Types CheckType()
        {
            if(toWrite!=null)
                toWrite.CheckType();
            return this.Type;
        }

        public override string GenCode()
        {
            string t = toWrite.GenCode();
            switch (toWrite.Type)
            {
                case Types.Int:
                    Compiler.EmitCode($"call i32 (i8*, ...) @printf(i8* bitcast ([3 x i8]* @int_res to i8*), i32 {t})");
                    return null;
                case Types.Double:
                    Compiler.EmitCode($"call i32 (i8*, ...) @printf(i8* bitcast ([4 x i8]* @double_res to i8*), double {t})");
                    return null;
                case Types.Bool:
                    string trueLab, falseLab, endLab;
                    trueLab = "true" + Compiler.NewTempLabel();
                    falseLab = "false" + Compiler.NewTempLabel();
                    endLab = "end" + Compiler.NewTempLabel();

                    Compiler.EmitCode("br i1 {0}, label %{1}, label %{2}", t, trueLab, falseLab);

                    Compiler.EmitCode("{0}:", trueLab);
                    Compiler.EmitCode("call i32 (i8*, ...) @printf(i8* bitcast ([5 x i8]* @bool_res_true to i8*))");
                    Compiler.EmitCode("br label %{0}", endLab);

                    Compiler.EmitCode("{0}:", falseLab);
                    Compiler.EmitCode("call i32 (i8*, ...) @printf(i8* bitcast ([6 x i8]* @bool_res_false to i8*))");
                    Compiler.EmitCode("br label %{0}", endLab);

                    Compiler.EmitCode("{0}:", endLab);
                    return null;
            }

            return null;
        }
    }

    class WriteExpHexStm : SyntaxTree
    {
        private SyntaxTree toWrite;
        public WriteExpHexStm(int lineNo, SyntaxTree exp)
            : base(Types.None, lineNo)
        {
            toWrite = exp;
        }
        public override Types CheckType()
        {
            if (toWrite!=null)
            {
                toWrite.CheckType();
                if (toWrite.Type != Types.Int)
                    Compiler.AnnounceError(Compiler.ErrorToMessage[Errors.OnlyIntWriteHex], this.LineNumber);
            }
            return Types.None;
        }

        public override string GenCode()
        {
            string t = toWrite.GenCode();
            Compiler.EmitCode($"call i32 (i8*, ...) @printf(i8* bitcast ([5 x i8]* @int_res_hex to i8*), i32 {t})");
                        
            return null;
        }
    }

    class WriteTextStm : SyntaxTree
    {
        private SyntaxTree textToWrite;
        public WriteTextStm(int lineNo, SyntaxTree text)
            : base(Types.None, lineNo)
        {
            textToWrite = text;
        }
        public override Types CheckType()
        {
            if (textToWrite != null)
                textToWrite.CheckType();
            return this.Type;
        }

        public override string GenCode()
        {
            string t = textToWrite.GenCode();
            int valLength = Compiler.ConstTexts.First(e => e.constName == t).length;
            Compiler.EmitCode("call i32 (i8*, ...) @printf(i8* bitcast ([{0} x i8]* {1} to i8*))", valLength, t);
            return null;
        }

    }

    class ReadStm : SyntaxTree
    {
        private Ident ident;
        public ReadStm(int lineNo, Ident ident)
            : base(Types.None, lineNo)
        {
            this.ident = ident;
        }
        public override Types CheckType()
        {
            if (ident != null)
            {
                ident.CheckType();
                if (ident.Type != Types.Int && ident.Type != Types.Double)
                    Compiler.AnnounceError(Compiler.ErrorToMessage[Errors.OnlyIntOrDoubleRead], this.LineNumber);
            }
            return this.Type;
        }

        public override string GenCode()
        {
            string t = ident.IdentName;
            if (ident.Type == Types.Int)
                Compiler.EmitCode("call i32 (i8*, ...) @scanf(i8* bitcast ([3 x i8]* @int_read to i8*), i32* %{0})", t);
            else // double
                Compiler.EmitCode("call i32 (i8*, ...) @scanf(i8* bitcast ([4 x i8]* @double_read to i8*), double* %{0})", t);
            return null;
        }
    }

    class ReadHexStm : SyntaxTree
    {
        private Ident ident;
        public ReadHexStm(int lineNo, Ident ident)
            : base(Types.None, lineNo)
        {
            this.ident = ident;
        }
        public override Types CheckType()
        {
            if (ident != null)
            {
                ident.CheckType();
                if (ident.Type != Types.Int)
                    Compiler.AnnounceError(Compiler.ErrorToMessage[Errors.OnlyIntReadHex], this.LineNumber);
            }
            return this.Type;
        }

        public override string GenCode()
        {
            string t = ident.IdentName;
            Compiler.EmitCode("call i32 (i8*, ...) @scanf(i8* bitcast ([3 x i8]* @int_hex_read to i8*), i32* %{0})", t);
            return null;
        }

    }

    class IfStm : SyntaxTree
    {
        private SyntaxTree condExp;
        private SyntaxTree thenStm;
        private SyntaxTree elseStm;
        public IfStm(int lineNo, SyntaxTree condExp, SyntaxTree thenStm, SyntaxTree elseStm = null)
            : base(Types.None, lineNo)
        {
            this.condExp = condExp;
            this.thenStm = thenStm;
            this.elseStm = elseStm;
        }
        public override Types CheckType()
        {
            if (condExp != null && thenStm != null)
            {
                condExp.CheckType();
                thenStm.CheckType();
                if (elseStm != null)
                    elseStm.CheckType();

                if (condExp.Type != Types.Bool)
                    Compiler.AnnounceError(Compiler.ErrorToMessage[Errors.OnlyBoolInIfExp], this.LineNumber);
            }

            return this.Type;
        }

        public override string GenCode()
        {
            string t, trueLab, falseLab, endLab;
            trueLab = "true" + Compiler.NewTempLabel();
            falseLab = "false" + Compiler.NewTempLabel();
            endLab = "end" + Compiler.NewTempLabel();

            t = condExp.GenCode();
            Compiler.EmitCode("br i1 {0}, label %{1}, label %{2}", t, trueLab, falseLab);

            Compiler.EmitCode("{0}:", trueLab);
            thenStm.GenCode();
            Compiler.EmitCode("br label %{0}", endLab);

            Compiler.EmitCode("{0}:", falseLab);
            if (elseStm != null)
                elseStm.GenCode();
            Compiler.EmitCode("br label %{0}", endLab);

            Compiler.EmitCode("{0}:", endLab);

            return null;
            
        }

    }

    class WhileStm : SyntaxTree
    {
        private SyntaxTree condExp;
        private SyntaxTree bodyStm;
        public WhileStm(int lineNo, SyntaxTree condExp, SyntaxTree bodyStm)
            : base(Types.None, lineNo)
        {
            this.condExp = condExp;
            this.bodyStm = bodyStm;
        }
        public override Types CheckType()
        {
            if (condExp != null && bodyStm != null)
            {
                condExp.CheckType();
                bodyStm.CheckType();

                if (condExp.Type != Types.Bool)
                    Compiler.AnnounceError(Compiler.ErrorToMessage[Errors.OnlyBoolInWhileExp], this.LineNumber);
            }

            return this.Type;
        }

        public override string GenCode()
        {
            string t;
            string startLab, innerLab, endLab;
            startLab = "start" + Compiler.NewTempLabel();
            innerLab = "inner" + Compiler.NewTempLabel();
            endLab = "end" + Compiler.NewTempLabel();
            Compiler.EmitCode("br label %{0}", startLab);
            Compiler.EmitCode("{0}:", startLab);
            t = condExp.GenCode();
            Compiler.EmitCode("br i1 {0}, label %{1}, label %{2}", t, innerLab, endLab);
            Compiler.EmitCode("{0}:", innerLab);
            bodyStm.GenCode();
            Compiler.EmitCode("br label %{0}", startLab);
            Compiler.EmitCode("{0}:", endLab);

            return null;
        }

    }

    class ReturnStm : SyntaxTree
    {
        public ReturnStm(int lineNo)
            : base(Types.None, lineNo)
        {
        }

        public override Types CheckType()
        {
            return this.Type;
        }

        public override string GenCode()
        {
            Compiler.EmitCode("ret i32 0");
            return null;
        }
    }
}

