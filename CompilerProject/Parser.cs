// This code was generated by the Gardens Point Parser Generator
// Copyright (c) Wayne Kelly, John Gough, QUT 2005-2014
// (see accompanying GPPGcopyright.rtf)

// GPPG version 1.5.2
// Machine:  LAPTOP-UAV88S9G
// DateTime: 17/06/2021 01:36:46
// UserName: gozde
// Input file <.\kompilator.y - 16/06/2021 10:26:26>

// options: lines gplex

using System;
using System.Collections.Generic;
using System.CodeDom.Compiler;
using System.Globalization;
using System.Text;
using QUT.Gppg;
using CompilerProject;
using System.Linq;

namespace GardensPoint
{
public enum Tokens {error=2,EOF=3,PROGRAM_KW=4,IF_KW=5,ELSE_KW=6,
    WHILE_KW=7,READ_KW=8,WRITE_KW=9,RETURN_KW=10,TRUE_KW=11,FALSE_KW=12,
    HEX_KW=13,BOOL_TP=14,INT_TP=15,DOUBLE_TP=16,ASSIGN=17,LOGICAL_AND=18,
    LOGICAL_OR=19,EQUAL=20,NOT_EQUAL=21,GREATER=22,GREATER_OR_EQUAL=23,LESS=24,
    LESS_OR_EQUAL=25,PLUS=26,MINUS=27,MULTIPLIES=28,DIVIDES=29,BIT_AND=30,
    BIT_OR=31,LOGICAL_NEG=32,BIT_NEG=33,OPEN_PAR=34,CLOSE_PAR=35,OPEN_CURLY_BR=36,
    CLOSE_CURLY_BR=37,COLON=38,SEMICOLON=39,ERROR=40,INT_NUMBER=41,DOUBLE_NUMBER=42,
    IDENT=43,TEXT=44};

public struct ValueType
#line 7 ".\kompilator.y"
{
public SyntaxTree syntaxTree_val;
public SyntaxTree[] syntaxTree_arr_val;
public Ident ident_val;
public Ident[] indent_arr_val;
public Types types_val;
}
#line default
// Abstract base class for GPLEX scanners
[GeneratedCodeAttribute( "Gardens Point Parser Generator", "1.5.2")]
public abstract class ScanBase : AbstractScanner<ValueType,LexLocation> {
  private LexLocation __yylloc = new LexLocation();
  public override LexLocation yylloc { get { return __yylloc; } set { __yylloc = value; } }
  protected virtual bool yywrap() { return true; }
}

// Utility class for encapsulating token information
[GeneratedCodeAttribute( "Gardens Point Parser Generator", "1.5.2")]
public class ScanObj {
  public int token;
  public ValueType yylval;
  public LexLocation yylloc;
  public ScanObj( int t, ValueType val, LexLocation loc ) {
    this.token = t; this.yylval = val; this.yylloc = loc;
  }
}

[GeneratedCodeAttribute( "Gardens Point Parser Generator", "1.5.2")]
public class Parser: ShiftReduceParser<ValueType, LexLocation>
{
#pragma warning disable 649
  private static Dictionary<int, string> aliases;
#pragma warning restore 649
  private static Rule[] rules = new Rule[71];
  private static State[] states = new State[127];
  private static string[] nonTerms = new string[] {
      "type", "start", "program_code", "declr", "declaration", "statement", "block_stm", 
      "exp_stm", "write_stm", "read_stm", "general_exp", "logical_exp", "relation_exp", 
      "add_exp", "mult_exp", "bit_exp", "unary_exp", "factor", "if_stm", "while_stm", 
      "return_stm", "declaration_list", "statement_list", "ident_list", "$accept", 
      };

  static Parser() {
    states[0] = new State(new int[]{4,3},new int[]{-2,1});
    states[1] = new State(new int[]{3,2});
    states[2] = new State(-1);
    states[3] = new State(new int[]{36,4,3,126});
    states[4] = new State(new int[]{3,8,14,-7,15,-7,16,-7,2,-7,43,-7,27,-7,33,-7,32,-7,34,-7,41,-7,42,-7,11,-7,12,-7,9,-7,8,-7,5,-7,7,-7,10,-7,36,-7,37,-7},new int[]{-3,5,-22,9});
    states[5] = new State(new int[]{37,6});
    states[6] = new State(new int[]{3,7});
    states[7] = new State(-2);
    states[8] = new State(-4);
    states[9] = new State(new int[]{14,121,15,122,16,123,2,124,43,-18,27,-18,33,-18,32,-18,34,-18,41,-18,42,-18,11,-18,12,-18,9,-18,8,-18,5,-18,7,-18,10,-18,36,-18,37,-18},new int[]{-23,10,-5,113,-4,114,-1,116});
    states[10] = new State(new int[]{2,12,43,17,27,31,33,33,32,35,34,37,41,42,42,43,11,45,12,46,9,76,8,85,5,92,7,100,10,106,36,109,37,-5},new int[]{-6,11,-8,14,-11,15,-12,20,-13,52,-14,72,-15,63,-16,62,-17,61,-18,41,-9,75,-10,84,-19,91,-20,99,-21,105,-7,108});
    states[11] = new State(-16);
    states[12] = new State(new int[]{39,13,2,-17,43,-17,27,-17,33,-17,32,-17,34,-17,41,-17,42,-17,11,-17,12,-17,9,-17,8,-17,5,-17,7,-17,10,-17,36,-17,37,-17});
    states[13] = new State(-26);
    states[14] = new State(-19);
    states[15] = new State(new int[]{39,16});
    states[16] = new State(-28);
    states[17] = new State(new int[]{17,18,30,-59,31,-59,28,-59,29,-59,26,-59,27,-59,20,-59,21,-59,22,-59,23,-59,24,-59,25,-59,18,-59,19,-59,39,-59,35,-59,38,-59});
    states[18] = new State(new int[]{43,17,27,31,33,33,32,35,34,37,41,42,42,43,11,45,12,46},new int[]{-11,19,-12,20,-13,52,-14,72,-15,63,-16,62,-17,61,-18,41});
    states[19] = new State(-29);
    states[20] = new State(new int[]{18,21,19,73,39,-30,35,-30,38,-30});
    states[21] = new State(new int[]{27,31,33,33,32,35,34,37,41,42,42,43,43,44,11,45,12,46},new int[]{-13,22,-14,72,-15,63,-16,62,-17,61,-18,41});
    states[22] = new State(new int[]{20,23,21,53,22,64,23,66,24,68,25,70,18,-31,19,-31,39,-31,35,-31,38,-31});
    states[23] = new State(new int[]{27,31,33,33,32,35,34,37,41,42,42,43,43,44,11,45,12,46},new int[]{-14,24,-15,63,-16,62,-17,61,-18,41});
    states[24] = new State(new int[]{26,25,27,55,20,-34,21,-34,22,-34,23,-34,24,-34,25,-34,18,-34,19,-34,39,-34,35,-34,38,-34});
    states[25] = new State(new int[]{27,31,33,33,32,35,34,37,41,42,42,43,43,44,11,45,12,46},new int[]{-15,26,-16,62,-17,61,-18,41});
    states[26] = new State(new int[]{28,27,29,57,26,-41,27,-41,20,-41,21,-41,22,-41,23,-41,24,-41,25,-41,18,-41,19,-41,39,-41,35,-41,38,-41});
    states[27] = new State(new int[]{27,31,33,33,32,35,34,37,41,42,42,43,43,44,11,45,12,46},new int[]{-16,28,-17,61,-18,41});
    states[28] = new State(new int[]{30,29,31,59,28,-44,29,-44,26,-44,27,-44,20,-44,21,-44,22,-44,23,-44,24,-44,25,-44,18,-44,19,-44,39,-44,35,-44,38,-44});
    states[29] = new State(new int[]{27,31,33,33,32,35,34,37,41,42,42,43,43,44,11,45,12,46},new int[]{-17,30,-18,41});
    states[30] = new State(-47);
    states[31] = new State(new int[]{27,31,33,33,32,35,34,37,41,42,42,43,43,44,11,45,12,46},new int[]{-17,32,-18,41});
    states[32] = new State(-50);
    states[33] = new State(new int[]{27,31,33,33,32,35,34,37,41,42,42,43,43,44,11,45,12,46},new int[]{-17,34,-18,41});
    states[34] = new State(-51);
    states[35] = new State(new int[]{27,31,33,33,32,35,34,37,41,42,42,43,43,44,11,45,12,46},new int[]{-17,36,-18,41});
    states[36] = new State(-52);
    states[37] = new State(new int[]{15,38,16,47,43,17,27,31,33,33,32,35,34,37,41,42,42,43,11,45,12,46},new int[]{-11,50,-12,20,-13,52,-14,72,-15,63,-16,62,-17,61,-18,41});
    states[38] = new State(new int[]{35,39});
    states[39] = new State(new int[]{27,31,33,33,32,35,34,37,41,42,42,43,43,44,11,45,12,46},new int[]{-17,40,-18,41});
    states[40] = new State(-53);
    states[41] = new State(-55);
    states[42] = new State(-57);
    states[43] = new State(-58);
    states[44] = new State(-59);
    states[45] = new State(-60);
    states[46] = new State(-61);
    states[47] = new State(new int[]{35,48});
    states[48] = new State(new int[]{27,31,33,33,32,35,34,37,41,42,42,43,43,44,11,45,12,46},new int[]{-17,49,-18,41});
    states[49] = new State(-54);
    states[50] = new State(new int[]{35,51});
    states[51] = new State(-56);
    states[52] = new State(new int[]{20,23,21,53,22,64,23,66,24,68,25,70,18,-33,19,-33,39,-33,35,-33,38,-33});
    states[53] = new State(new int[]{27,31,33,33,32,35,34,37,41,42,42,43,43,44,11,45,12,46},new int[]{-14,54,-15,63,-16,62,-17,61,-18,41});
    states[54] = new State(new int[]{26,25,27,55,20,-35,21,-35,22,-35,23,-35,24,-35,25,-35,18,-35,19,-35,39,-35,35,-35,38,-35});
    states[55] = new State(new int[]{27,31,33,33,32,35,34,37,41,42,42,43,43,44,11,45,12,46},new int[]{-15,56,-16,62,-17,61,-18,41});
    states[56] = new State(new int[]{28,27,29,57,26,-42,27,-42,20,-42,21,-42,22,-42,23,-42,24,-42,25,-42,18,-42,19,-42,39,-42,35,-42,38,-42});
    states[57] = new State(new int[]{27,31,33,33,32,35,34,37,41,42,42,43,43,44,11,45,12,46},new int[]{-16,58,-17,61,-18,41});
    states[58] = new State(new int[]{30,29,31,59,28,-45,29,-45,26,-45,27,-45,20,-45,21,-45,22,-45,23,-45,24,-45,25,-45,18,-45,19,-45,39,-45,35,-45,38,-45});
    states[59] = new State(new int[]{27,31,33,33,32,35,34,37,41,42,42,43,43,44,11,45,12,46},new int[]{-17,60,-18,41});
    states[60] = new State(-48);
    states[61] = new State(-49);
    states[62] = new State(new int[]{30,29,31,59,28,-46,29,-46,26,-46,27,-46,20,-46,21,-46,22,-46,23,-46,24,-46,25,-46,18,-46,19,-46,39,-46,35,-46,38,-46});
    states[63] = new State(new int[]{28,27,29,57,26,-43,27,-43,20,-43,21,-43,22,-43,23,-43,24,-43,25,-43,18,-43,19,-43,39,-43,35,-43,38,-43});
    states[64] = new State(new int[]{27,31,33,33,32,35,34,37,41,42,42,43,43,44,11,45,12,46},new int[]{-14,65,-15,63,-16,62,-17,61,-18,41});
    states[65] = new State(new int[]{26,25,27,55,20,-36,21,-36,22,-36,23,-36,24,-36,25,-36,18,-36,19,-36,39,-36,35,-36,38,-36});
    states[66] = new State(new int[]{27,31,33,33,32,35,34,37,41,42,42,43,43,44,11,45,12,46},new int[]{-14,67,-15,63,-16,62,-17,61,-18,41});
    states[67] = new State(new int[]{26,25,27,55,20,-37,21,-37,22,-37,23,-37,24,-37,25,-37,18,-37,19,-37,39,-37,35,-37,38,-37});
    states[68] = new State(new int[]{27,31,33,33,32,35,34,37,41,42,42,43,43,44,11,45,12,46},new int[]{-14,69,-15,63,-16,62,-17,61,-18,41});
    states[69] = new State(new int[]{26,25,27,55,20,-38,21,-38,22,-38,23,-38,24,-38,25,-38,18,-38,19,-38,39,-38,35,-38,38,-38});
    states[70] = new State(new int[]{27,31,33,33,32,35,34,37,41,42,42,43,43,44,11,45,12,46},new int[]{-14,71,-15,63,-16,62,-17,61,-18,41});
    states[71] = new State(new int[]{26,25,27,55,20,-39,21,-39,22,-39,23,-39,24,-39,25,-39,18,-39,19,-39,39,-39,35,-39,38,-39});
    states[72] = new State(new int[]{26,25,27,55,20,-40,21,-40,22,-40,23,-40,24,-40,25,-40,18,-40,19,-40,39,-40,35,-40,38,-40});
    states[73] = new State(new int[]{27,31,33,33,32,35,34,37,41,42,42,43,43,44,11,45,12,46},new int[]{-13,74,-14,72,-15,63,-16,62,-17,61,-18,41});
    states[74] = new State(new int[]{20,23,21,53,22,64,23,66,24,68,25,70,18,-32,19,-32,39,-32,35,-32,38,-32});
    states[75] = new State(-20);
    states[76] = new State(new int[]{44,77,43,17,27,31,33,33,32,35,34,37,41,42,42,43,11,45,12,46},new int[]{-11,79,-12,20,-13,52,-14,72,-15,63,-16,62,-17,61,-18,41});
    states[77] = new State(new int[]{39,78});
    states[78] = new State(-62);
    states[79] = new State(new int[]{39,80,38,81});
    states[80] = new State(-63);
    states[81] = new State(new int[]{13,82});
    states[82] = new State(new int[]{39,83});
    states[83] = new State(-64);
    states[84] = new State(-21);
    states[85] = new State(new int[]{43,86});
    states[86] = new State(new int[]{39,87,38,88});
    states[87] = new State(-65);
    states[88] = new State(new int[]{13,89});
    states[89] = new State(new int[]{39,90});
    states[90] = new State(-66);
    states[91] = new State(-22);
    states[92] = new State(new int[]{34,93});
    states[93] = new State(new int[]{43,17,27,31,33,33,32,35,34,37,41,42,42,43,11,45,12,46},new int[]{-11,94,-12,20,-13,52,-14,72,-15,63,-16,62,-17,61,-18,41});
    states[94] = new State(new int[]{35,95});
    states[95] = new State(new int[]{43,17,27,31,33,33,32,35,34,37,41,42,42,43,11,45,12,46,9,76,8,85,5,92,7,100,10,106,36,109,2,112},new int[]{-6,96,-8,14,-11,15,-12,20,-13,52,-14,72,-15,63,-16,62,-17,61,-18,41,-9,75,-10,84,-19,91,-20,99,-21,105,-7,108});
    states[96] = new State(new int[]{6,97,2,-67,43,-67,27,-67,33,-67,32,-67,34,-67,41,-67,42,-67,11,-67,12,-67,9,-67,8,-67,5,-67,7,-67,10,-67,36,-67,37,-67});
    states[97] = new State(new int[]{43,17,27,31,33,33,32,35,34,37,41,42,42,43,11,45,12,46,9,76,8,85,5,92,7,100,10,106,36,109,2,112},new int[]{-6,98,-8,14,-11,15,-12,20,-13,52,-14,72,-15,63,-16,62,-17,61,-18,41,-9,75,-10,84,-19,91,-20,99,-21,105,-7,108});
    states[98] = new State(-68);
    states[99] = new State(-23);
    states[100] = new State(new int[]{34,101});
    states[101] = new State(new int[]{43,17,27,31,33,33,32,35,34,37,41,42,42,43,11,45,12,46},new int[]{-11,102,-12,20,-13,52,-14,72,-15,63,-16,62,-17,61,-18,41});
    states[102] = new State(new int[]{35,103});
    states[103] = new State(new int[]{43,17,27,31,33,33,32,35,34,37,41,42,42,43,11,45,12,46,9,76,8,85,5,92,7,100,10,106,36,109,2,112},new int[]{-6,104,-8,14,-11,15,-12,20,-13,52,-14,72,-15,63,-16,62,-17,61,-18,41,-9,75,-10,84,-19,91,-20,99,-21,105,-7,108});
    states[104] = new State(-69);
    states[105] = new State(-24);
    states[106] = new State(new int[]{39,107});
    states[107] = new State(-70);
    states[108] = new State(-25);
    states[109] = new State(-18,new int[]{-23,110});
    states[110] = new State(new int[]{37,111,2,12,43,17,27,31,33,33,32,35,34,37,41,42,42,43,11,45,12,46,9,76,8,85,5,92,7,100,10,106,36,109},new int[]{-6,11,-8,14,-11,15,-12,20,-13,52,-14,72,-15,63,-16,62,-17,61,-18,41,-9,75,-10,84,-19,91,-20,99,-21,105,-7,108});
    states[111] = new State(-27);
    states[112] = new State(new int[]{39,13});
    states[113] = new State(-6);
    states[114] = new State(new int[]{39,115});
    states[115] = new State(-8);
    states[116] = new State(new int[]{43,120},new int[]{-24,117});
    states[117] = new State(new int[]{38,118,39,-10});
    states[118] = new State(new int[]{43,119});
    states[119] = new State(-11);
    states[120] = new State(-12);
    states[121] = new State(-13);
    states[122] = new State(-14);
    states[123] = new State(-15);
    states[124] = new State(new int[]{39,125});
    states[125] = new State(-9);
    states[126] = new State(-3);

    for (int sNo = 0; sNo < states.Length; sNo++) states[sNo].number = sNo;

    rules[1] = new Rule(-25, new int[]{-2,3});
    rules[2] = new Rule(-2, new int[]{4,36,-3,37,3});
    rules[3] = new Rule(-2, new int[]{4,3});
    rules[4] = new Rule(-2, new int[]{4,36,3});
    rules[5] = new Rule(-3, new int[]{-22,-23});
    rules[6] = new Rule(-22, new int[]{-22,-5});
    rules[7] = new Rule(-22, new int[]{});
    rules[8] = new Rule(-5, new int[]{-4,39});
    rules[9] = new Rule(-5, new int[]{2,39});
    rules[10] = new Rule(-4, new int[]{-1,-24});
    rules[11] = new Rule(-24, new int[]{-24,38,43});
    rules[12] = new Rule(-24, new int[]{43});
    rules[13] = new Rule(-1, new int[]{14});
    rules[14] = new Rule(-1, new int[]{15});
    rules[15] = new Rule(-1, new int[]{16});
    rules[16] = new Rule(-23, new int[]{-23,-6});
    rules[17] = new Rule(-23, new int[]{-23,2});
    rules[18] = new Rule(-23, new int[]{});
    rules[19] = new Rule(-6, new int[]{-8});
    rules[20] = new Rule(-6, new int[]{-9});
    rules[21] = new Rule(-6, new int[]{-10});
    rules[22] = new Rule(-6, new int[]{-19});
    rules[23] = new Rule(-6, new int[]{-20});
    rules[24] = new Rule(-6, new int[]{-21});
    rules[25] = new Rule(-6, new int[]{-7});
    rules[26] = new Rule(-6, new int[]{2,39});
    rules[27] = new Rule(-7, new int[]{36,-23,37});
    rules[28] = new Rule(-8, new int[]{-11,39});
    rules[29] = new Rule(-11, new int[]{43,17,-11});
    rules[30] = new Rule(-11, new int[]{-12});
    rules[31] = new Rule(-12, new int[]{-12,18,-13});
    rules[32] = new Rule(-12, new int[]{-12,19,-13});
    rules[33] = new Rule(-12, new int[]{-13});
    rules[34] = new Rule(-13, new int[]{-13,20,-14});
    rules[35] = new Rule(-13, new int[]{-13,21,-14});
    rules[36] = new Rule(-13, new int[]{-13,22,-14});
    rules[37] = new Rule(-13, new int[]{-13,23,-14});
    rules[38] = new Rule(-13, new int[]{-13,24,-14});
    rules[39] = new Rule(-13, new int[]{-13,25,-14});
    rules[40] = new Rule(-13, new int[]{-14});
    rules[41] = new Rule(-14, new int[]{-14,26,-15});
    rules[42] = new Rule(-14, new int[]{-14,27,-15});
    rules[43] = new Rule(-14, new int[]{-15});
    rules[44] = new Rule(-15, new int[]{-15,28,-16});
    rules[45] = new Rule(-15, new int[]{-15,29,-16});
    rules[46] = new Rule(-15, new int[]{-16});
    rules[47] = new Rule(-16, new int[]{-16,30,-17});
    rules[48] = new Rule(-16, new int[]{-16,31,-17});
    rules[49] = new Rule(-16, new int[]{-17});
    rules[50] = new Rule(-17, new int[]{27,-17});
    rules[51] = new Rule(-17, new int[]{33,-17});
    rules[52] = new Rule(-17, new int[]{32,-17});
    rules[53] = new Rule(-17, new int[]{34,15,35,-17});
    rules[54] = new Rule(-17, new int[]{34,16,35,-17});
    rules[55] = new Rule(-17, new int[]{-18});
    rules[56] = new Rule(-18, new int[]{34,-11,35});
    rules[57] = new Rule(-18, new int[]{41});
    rules[58] = new Rule(-18, new int[]{42});
    rules[59] = new Rule(-18, new int[]{43});
    rules[60] = new Rule(-18, new int[]{11});
    rules[61] = new Rule(-18, new int[]{12});
    rules[62] = new Rule(-9, new int[]{9,44,39});
    rules[63] = new Rule(-9, new int[]{9,-11,39});
    rules[64] = new Rule(-9, new int[]{9,-11,38,13,39});
    rules[65] = new Rule(-10, new int[]{8,43,39});
    rules[66] = new Rule(-10, new int[]{8,43,38,13,39});
    rules[67] = new Rule(-19, new int[]{5,34,-11,35,-6});
    rules[68] = new Rule(-19, new int[]{5,34,-11,35,-6,6,-6});
    rules[69] = new Rule(-20, new int[]{7,34,-11,35,-6});
    rules[70] = new Rule(-21, new int[]{10,39});
  }

  protected override void Initialize() {
    this.InitSpecialTokens((int)Tokens.error, (int)Tokens.EOF);
    this.InitStates(states);
    this.InitRules(rules);
    this.InitNonTerminals(nonTerms);
  }

  protected override void DoAction(int action)
  {
#pragma warning disable 162, 1522
    switch (action)
    {
      case 2: // start -> PROGRAM_KW, OPEN_CURLY_BR, program_code, CLOSE_CURLY_BR, EOF
#line 38 ".\kompilator.y"
      { CurrentSemanticValue.syntaxTree_val = new Code(Compiler.LineNumber, ValueStack[ValueStack.Depth-3].syntaxTree_val); CurrentSemanticValue.syntaxTree_val.CheckType(); if(Compiler.ErrorsCount==0) CurrentSemanticValue.syntaxTree_val.GenCode(); }
#line default
        break;
      case 3: // start -> PROGRAM_KW, EOF
#line 40 ".\kompilator.y"
      { Compiler.AnnounceError("unexpeced end of file", Compiler.LineNumber); YYAbort(); }
#line default
        break;
      case 4: // start -> PROGRAM_KW, OPEN_CURLY_BR, EOF
#line 42 ".\kompilator.y"
      { Compiler.AnnounceError("unexpeced end of file", Compiler.LineNumber); YYAbort(); }
#line default
        break;
      case 5: // program_code -> declaration_list, statement_list
#line 46 ".\kompilator.y"
      { CurrentSemanticValue.syntaxTree_val = new ProgramCode(Compiler.LineNumber, ValueStack[ValueStack.Depth-2].syntaxTree_arr_val, ValueStack[ValueStack.Depth-1].syntaxTree_arr_val); }
#line default
        break;
      case 6: // declaration_list -> declaration_list, declaration
#line 51 ".\kompilator.y"
      { CurrentSemanticValue.syntaxTree_arr_val = ValueStack[ValueStack.Depth-2].syntaxTree_arr_val.Append(ValueStack[ValueStack.Depth-1].syntaxTree_val).ToArray();}
#line default
        break;
      case 7: // declaration_list -> /* empty */
#line 53 ".\kompilator.y"
      { CurrentSemanticValue.syntaxTree_arr_val = new SyntaxTree[0]; }
#line default
        break;
      case 8: // declaration -> declr, SEMICOLON
#line 57 ".\kompilator.y"
      { CurrentSemanticValue.syntaxTree_val = ValueStack[ValueStack.Depth-2].syntaxTree_val; }
#line default
        break;
      case 9: // declaration -> error, SEMICOLON
#line 59 ".\kompilator.y"
      { Compiler.AnnounceError("syntax error", Compiler.LineNumber); yyerrok(); }
#line default
        break;
      case 10: // declr -> type, ident_list
#line 63 ".\kompilator.y"
      { CurrentSemanticValue.syntaxTree_val = new DeclrStm(Compiler.LineNumber, ValueStack[ValueStack.Depth-2].types_val, ValueStack[ValueStack.Depth-1].indent_arr_val); }
#line default
        break;
      case 11: // ident_list -> ident_list, COLON, IDENT
#line 67 ".\kompilator.y"
      { CurrentSemanticValue.indent_arr_val = ValueStack[ValueStack.Depth-3].indent_arr_val.Append(ValueStack[ValueStack.Depth-1].ident_val).ToArray(); }
#line default
        break;
      case 12: // ident_list -> IDENT
#line 69 ".\kompilator.y"
      { CurrentSemanticValue.indent_arr_val = new Ident[1] {ValueStack[ValueStack.Depth-1].ident_val};}
#line default
        break;
      case 13: // type -> BOOL_TP
#line 73 ".\kompilator.y"
      { CurrentSemanticValue.types_val = Types.Bool; }
#line default
        break;
      case 14: // type -> INT_TP
#line 75 ".\kompilator.y"
      { CurrentSemanticValue.types_val = Types.Int; }
#line default
        break;
      case 15: // type -> DOUBLE_TP
#line 77 ".\kompilator.y"
      { CurrentSemanticValue.types_val = Types.Double; }
#line default
        break;
      case 16: // statement_list -> statement_list, statement
#line 82 ".\kompilator.y"
      { CurrentSemanticValue.syntaxTree_arr_val = ValueStack[ValueStack.Depth-2].syntaxTree_arr_val.Append(ValueStack[ValueStack.Depth-1].syntaxTree_val).ToArray(); }
#line default
        break;
      case 17: // statement_list -> statement_list, error
#line 84 ".\kompilator.y"
      { Compiler.AnnounceError("syntax error", Compiler.LineNumber);  }
#line default
        break;
      case 18: // statement_list -> /* empty */
#line 86 ".\kompilator.y"
      { CurrentSemanticValue.syntaxTree_arr_val = new SyntaxTree[0];}
#line default
        break;
      case 19: // statement -> exp_stm
#line 90 ".\kompilator.y"
      { CurrentSemanticValue.syntaxTree_val = ValueStack[ValueStack.Depth-1].syntaxTree_val; }
#line default
        break;
      case 20: // statement -> write_stm
#line 92 ".\kompilator.y"
      { CurrentSemanticValue.syntaxTree_val = ValueStack[ValueStack.Depth-1].syntaxTree_val; }
#line default
        break;
      case 21: // statement -> read_stm
#line 94 ".\kompilator.y"
      { CurrentSemanticValue.syntaxTree_val = ValueStack[ValueStack.Depth-1].syntaxTree_val; }
#line default
        break;
      case 22: // statement -> if_stm
#line 96 ".\kompilator.y"
      { CurrentSemanticValue.syntaxTree_val = ValueStack[ValueStack.Depth-1].syntaxTree_val; }
#line default
        break;
      case 23: // statement -> while_stm
#line 98 ".\kompilator.y"
      { CurrentSemanticValue.syntaxTree_val = ValueStack[ValueStack.Depth-1].syntaxTree_val; }
#line default
        break;
      case 24: // statement -> return_stm
#line 100 ".\kompilator.y"
      { CurrentSemanticValue.syntaxTree_val = ValueStack[ValueStack.Depth-1].syntaxTree_val; }
#line default
        break;
      case 25: // statement -> block_stm
#line 102 ".\kompilator.y"
      { CurrentSemanticValue.syntaxTree_val = ValueStack[ValueStack.Depth-1].syntaxTree_val; }
#line default
        break;
      case 26: // statement -> error, SEMICOLON
#line 104 ".\kompilator.y"
      { Compiler.AnnounceError("syntax error", Compiler.LineNumber); yyerrok(); }
#line default
        break;
      case 27: // block_stm -> OPEN_CURLY_BR, statement_list, CLOSE_CURLY_BR
#line 108 ".\kompilator.y"
      { CurrentSemanticValue.syntaxTree_val = new BlockStm(Compiler.LineNumber, ValueStack[ValueStack.Depth-2].syntaxTree_arr_val); }
#line default
        break;
      case 28: // exp_stm -> general_exp, SEMICOLON
#line 112 ".\kompilator.y"
      { CurrentSemanticValue.syntaxTree_val = new ExpStm(Compiler.LineNumber, ValueStack[ValueStack.Depth-2].syntaxTree_val); }
#line default
        break;
      case 29: // general_exp -> IDENT, ASSIGN, general_exp
#line 116 ".\kompilator.y"
      { CurrentSemanticValue.syntaxTree_val = new Assign(Compiler.LineNumber, ValueStack[ValueStack.Depth-3].ident_val, ValueStack[ValueStack.Depth-1].syntaxTree_val); }
#line default
        break;
      case 30: // general_exp -> logical_exp
#line 118 ".\kompilator.y"
      { CurrentSemanticValue.syntaxTree_val = ValueStack[ValueStack.Depth-1].syntaxTree_val; }
#line default
        break;
      case 31: // logical_exp -> logical_exp, LOGICAL_AND, relation_exp
#line 122 ".\kompilator.y"
      { CurrentSemanticValue.syntaxTree_val = new LogicalOp(Compiler.LineNumber, ValueStack[ValueStack.Depth-3].syntaxTree_val, ValueStack[ValueStack.Depth-1].syntaxTree_val, Tokens.LOGICAL_AND); }
#line default
        break;
      case 32: // logical_exp -> logical_exp, LOGICAL_OR, relation_exp
#line 124 ".\kompilator.y"
      { CurrentSemanticValue.syntaxTree_val = new LogicalOp(Compiler.LineNumber, ValueStack[ValueStack.Depth-3].syntaxTree_val, ValueStack[ValueStack.Depth-1].syntaxTree_val, Tokens.LOGICAL_OR); }
#line default
        break;
      case 33: // logical_exp -> relation_exp
#line 126 ".\kompilator.y"
      { CurrentSemanticValue.syntaxTree_val = ValueStack[ValueStack.Depth-1].syntaxTree_val;}
#line default
        break;
      case 34: // relation_exp -> relation_exp, EQUAL, add_exp
#line 131 ".\kompilator.y"
      { CurrentSemanticValue.syntaxTree_val = new RelationOp(Compiler.LineNumber, ValueStack[ValueStack.Depth-3].syntaxTree_val, ValueStack[ValueStack.Depth-1].syntaxTree_val, Tokens.EQUAL);}
#line default
        break;
      case 35: // relation_exp -> relation_exp, NOT_EQUAL, add_exp
#line 133 ".\kompilator.y"
      { CurrentSemanticValue.syntaxTree_val = new RelationOp(Compiler.LineNumber, ValueStack[ValueStack.Depth-3].syntaxTree_val, ValueStack[ValueStack.Depth-1].syntaxTree_val, Tokens.NOT_EQUAL);}
#line default
        break;
      case 36: // relation_exp -> relation_exp, GREATER, add_exp
#line 135 ".\kompilator.y"
      { CurrentSemanticValue.syntaxTree_val = new RelationOp(Compiler.LineNumber, ValueStack[ValueStack.Depth-3].syntaxTree_val, ValueStack[ValueStack.Depth-1].syntaxTree_val, Tokens.GREATER);}
#line default
        break;
      case 37: // relation_exp -> relation_exp, GREATER_OR_EQUAL, add_exp
#line 137 ".\kompilator.y"
      { CurrentSemanticValue.syntaxTree_val = new RelationOp(Compiler.LineNumber, ValueStack[ValueStack.Depth-3].syntaxTree_val, ValueStack[ValueStack.Depth-1].syntaxTree_val, Tokens.GREATER_OR_EQUAL);}
#line default
        break;
      case 38: // relation_exp -> relation_exp, LESS, add_exp
#line 139 ".\kompilator.y"
      { CurrentSemanticValue.syntaxTree_val = new RelationOp(Compiler.LineNumber, ValueStack[ValueStack.Depth-3].syntaxTree_val, ValueStack[ValueStack.Depth-1].syntaxTree_val, Tokens.LESS);}
#line default
        break;
      case 39: // relation_exp -> relation_exp, LESS_OR_EQUAL, add_exp
#line 141 ".\kompilator.y"
      { CurrentSemanticValue.syntaxTree_val = new RelationOp(Compiler.LineNumber, ValueStack[ValueStack.Depth-3].syntaxTree_val, ValueStack[ValueStack.Depth-1].syntaxTree_val, Tokens.LESS_OR_EQUAL);}
#line default
        break;
      case 40: // relation_exp -> add_exp
#line 143 ".\kompilator.y"
      { CurrentSemanticValue.syntaxTree_val = ValueStack[ValueStack.Depth-1].syntaxTree_val;}
#line default
        break;
      case 41: // add_exp -> add_exp, PLUS, mult_exp
#line 147 ".\kompilator.y"
      { CurrentSemanticValue.syntaxTree_val = new AddMulOp(Compiler.LineNumber, ValueStack[ValueStack.Depth-3].syntaxTree_val, ValueStack[ValueStack.Depth-1].syntaxTree_val, Tokens.PLUS); }
#line default
        break;
      case 42: // add_exp -> add_exp, MINUS, mult_exp
#line 149 ".\kompilator.y"
      { CurrentSemanticValue.syntaxTree_val = new AddMulOp(Compiler.LineNumber, ValueStack[ValueStack.Depth-3].syntaxTree_val, ValueStack[ValueStack.Depth-1].syntaxTree_val, Tokens.MINUS); }
#line default
        break;
      case 43: // add_exp -> mult_exp
#line 151 ".\kompilator.y"
      { CurrentSemanticValue.syntaxTree_val = ValueStack[ValueStack.Depth-1].syntaxTree_val; }
#line default
        break;
      case 44: // mult_exp -> mult_exp, MULTIPLIES, bit_exp
#line 155 ".\kompilator.y"
      { CurrentSemanticValue.syntaxTree_val = new AddMulOp(Compiler.LineNumber, ValueStack[ValueStack.Depth-3].syntaxTree_val, ValueStack[ValueStack.Depth-1].syntaxTree_val, Tokens.MULTIPLIES); }
#line default
        break;
      case 45: // mult_exp -> mult_exp, DIVIDES, bit_exp
#line 157 ".\kompilator.y"
      { CurrentSemanticValue.syntaxTree_val = new AddMulOp(Compiler.LineNumber, ValueStack[ValueStack.Depth-3].syntaxTree_val, ValueStack[ValueStack.Depth-1].syntaxTree_val, Tokens.DIVIDES); }
#line default
        break;
      case 46: // mult_exp -> bit_exp
#line 159 ".\kompilator.y"
      { CurrentSemanticValue.syntaxTree_val = ValueStack[ValueStack.Depth-1].syntaxTree_val; }
#line default
        break;
      case 47: // bit_exp -> bit_exp, BIT_AND, unary_exp
#line 163 ".\kompilator.y"
      { CurrentSemanticValue.syntaxTree_val = new BitOp(Compiler.LineNumber, ValueStack[ValueStack.Depth-3].syntaxTree_val, ValueStack[ValueStack.Depth-1].syntaxTree_val, Tokens.BIT_AND); }
#line default
        break;
      case 48: // bit_exp -> bit_exp, BIT_OR, unary_exp
#line 165 ".\kompilator.y"
      { CurrentSemanticValue.syntaxTree_val = new BitOp(Compiler.LineNumber, ValueStack[ValueStack.Depth-3].syntaxTree_val, ValueStack[ValueStack.Depth-1].syntaxTree_val, Tokens.BIT_OR); }
#line default
        break;
      case 49: // bit_exp -> unary_exp
#line 167 ".\kompilator.y"
      { CurrentSemanticValue.syntaxTree_val = ValueStack[ValueStack.Depth-1].syntaxTree_val; }
#line default
        break;
      case 50: // unary_exp -> MINUS, unary_exp
#line 171 ".\kompilator.y"
      { CurrentSemanticValue.syntaxTree_val = new UnaryOp(Compiler.LineNumber, ValueStack[ValueStack.Depth-1].syntaxTree_val, Tokens.MINUS);}
#line default
        break;
      case 51: // unary_exp -> BIT_NEG, unary_exp
#line 173 ".\kompilator.y"
      { CurrentSemanticValue.syntaxTree_val = new UnaryOp(Compiler.LineNumber, ValueStack[ValueStack.Depth-1].syntaxTree_val, Tokens.BIT_NEG); }
#line default
        break;
      case 52: // unary_exp -> LOGICAL_NEG, unary_exp
#line 175 ".\kompilator.y"
      { CurrentSemanticValue.syntaxTree_val = new UnaryOp(Compiler.LineNumber, ValueStack[ValueStack.Depth-1].syntaxTree_val, Tokens.LOGICAL_NEG); }
#line default
        break;
      case 53: // unary_exp -> OPEN_PAR, INT_TP, CLOSE_PAR, unary_exp
#line 177 ".\kompilator.y"
      { CurrentSemanticValue.syntaxTree_val = new UnaryOp(Compiler.LineNumber, ValueStack[ValueStack.Depth-1].syntaxTree_val, Tokens.INT_TP); }
#line default
        break;
      case 54: // unary_exp -> OPEN_PAR, DOUBLE_TP, CLOSE_PAR, unary_exp
#line 179 ".\kompilator.y"
      { CurrentSemanticValue.syntaxTree_val = new UnaryOp(Compiler.LineNumber, ValueStack[ValueStack.Depth-1].syntaxTree_val, Tokens.DOUBLE_TP); }
#line default
        break;
      case 55: // unary_exp -> factor
#line 181 ".\kompilator.y"
      { CurrentSemanticValue.syntaxTree_val = ValueStack[ValueStack.Depth-1].syntaxTree_val; }
#line default
        break;
      case 56: // factor -> OPEN_PAR, general_exp, CLOSE_PAR
#line 185 ".\kompilator.y"
      { CurrentSemanticValue.syntaxTree_val = ValueStack[ValueStack.Depth-2].syntaxTree_val; }
#line default
        break;
      case 57: // factor -> INT_NUMBER
#line 187 ".\kompilator.y"
      { CurrentSemanticValue.syntaxTree_val = ValueStack[ValueStack.Depth-1].syntaxTree_val; }
#line default
        break;
      case 58: // factor -> DOUBLE_NUMBER
#line 189 ".\kompilator.y"
      { CurrentSemanticValue.syntaxTree_val = ValueStack[ValueStack.Depth-1].syntaxTree_val; }
#line default
        break;
      case 59: // factor -> IDENT
#line 191 ".\kompilator.y"
      { CurrentSemanticValue.syntaxTree_val = ValueStack[ValueStack.Depth-1].ident_val; }
#line default
        break;
      case 60: // factor -> TRUE_KW
#line 193 ".\kompilator.y"
      { CurrentSemanticValue.syntaxTree_val = ValueStack[ValueStack.Depth-1].syntaxTree_val; }
#line default
        break;
      case 61: // factor -> FALSE_KW
#line 195 ".\kompilator.y"
      { CurrentSemanticValue.syntaxTree_val = ValueStack[ValueStack.Depth-1].syntaxTree_val; }
#line default
        break;
      case 62: // write_stm -> WRITE_KW, TEXT, SEMICOLON
#line 200 ".\kompilator.y"
      { CurrentSemanticValue.syntaxTree_val = new WriteTextStm(Compiler.LineNumber, ValueStack[ValueStack.Depth-2].syntaxTree_val); }
#line default
        break;
      case 63: // write_stm -> WRITE_KW, general_exp, SEMICOLON
#line 202 ".\kompilator.y"
      { CurrentSemanticValue.syntaxTree_val = new WriteExpStm(Compiler.LineNumber, ValueStack[ValueStack.Depth-2].syntaxTree_val); }
#line default
        break;
      case 64: // write_stm -> WRITE_KW, general_exp, COLON, HEX_KW, SEMICOLON
#line 204 ".\kompilator.y"
      { CurrentSemanticValue.syntaxTree_val = new WriteExpHexStm(Compiler.LineNumber, ValueStack[ValueStack.Depth-4].syntaxTree_val); }
#line default
        break;
      case 65: // read_stm -> READ_KW, IDENT, SEMICOLON
#line 209 ".\kompilator.y"
      { CurrentSemanticValue.syntaxTree_val = new ReadStm(Compiler.LineNumber, ValueStack[ValueStack.Depth-2].ident_val);}
#line default
        break;
      case 66: // read_stm -> READ_KW, IDENT, COLON, HEX_KW, SEMICOLON
#line 211 ".\kompilator.y"
      { CurrentSemanticValue.syntaxTree_val = new ReadHexStm(Compiler.LineNumber, ValueStack[ValueStack.Depth-4].ident_val);}
#line default
        break;
      case 67: // if_stm -> IF_KW, OPEN_PAR, general_exp, CLOSE_PAR, statement
#line 216 ".\kompilator.y"
      { CurrentSemanticValue.syntaxTree_val = new IfStm(Compiler.LineNumber, ValueStack[ValueStack.Depth-3].syntaxTree_val, ValueStack[ValueStack.Depth-1].syntaxTree_val); }
#line default
        break;
      case 68: // if_stm -> IF_KW, OPEN_PAR, general_exp, CLOSE_PAR, statement, ELSE_KW, 
               //           statement
#line 218 ".\kompilator.y"
      { CurrentSemanticValue.syntaxTree_val = new IfStm(Compiler.LineNumber, ValueStack[ValueStack.Depth-5].syntaxTree_val, ValueStack[ValueStack.Depth-3].syntaxTree_val, ValueStack[ValueStack.Depth-1].syntaxTree_val); }
#line default
        break;
      case 69: // while_stm -> WHILE_KW, OPEN_PAR, general_exp, CLOSE_PAR, statement
#line 223 ".\kompilator.y"
      { CurrentSemanticValue.syntaxTree_val = new WhileStm(Compiler.LineNumber, ValueStack[ValueStack.Depth-3].syntaxTree_val, ValueStack[ValueStack.Depth-1].syntaxTree_val);}
#line default
        break;
      case 70: // return_stm -> RETURN_KW, SEMICOLON
#line 227 ".\kompilator.y"
      { CurrentSemanticValue.syntaxTree_val = new ReturnStm(Compiler.LineNumber);}
#line default
        break;
    }
#pragma warning restore 162, 1522
  }

  protected override string TerminalToString(int terminal)
  {
    if (aliases != null && aliases.ContainsKey(terminal))
        return aliases[terminal];
    else if (((Tokens)terminal).ToString() != terminal.ToString(CultureInfo.InvariantCulture))
        return ((Tokens)terminal).ToString();
    else
        return CharToString((char)terminal);
  }

#line 231 ".\kompilator.y"
public Parser(Scanner scanner) : base(scanner) { }
#line default
}
}
