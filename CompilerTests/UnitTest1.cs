using CompilerProject;
using Microsoft.VisualStudio.TestTools.UnitTesting;
using System;
using System.IO;
using System.Management.Automation;

namespace CompilerTests
{
    [TestClass]
    public class UnitTest1
    {
        private static string baseTestPath = @"C:\MINI_Informatyka_sem_6\Metody_Translacji\CompilerProject\CompilerTests\TestInOut";


        [DataTestMethod]
        //[DataRow("boolexp.txt")]
        //[DataRow("numbers.txt")]
        //[DataRow("manythings.txt")]
        //[DataRow("p_u_programDeclr.txt")]
        //[DataRow("p_u_programEmpty.txt")]
        //[DataRow("p_u_declarations.txt")]
        //[DataRow("p_u_write_special.txt")]
        //[DataRow("p_u_blockstm.txt")]
        //[DataRow("p_u_ifstm.txt")]
        //[DataRow("p_u_while.txt")]
        //[DataRow("p_u_read.txt")]
        //[DataRow("p_u_write.txt")]
        //[DataRow("p_u_exp.txt")]
        [DataRow("general_things.txt")]
        public void TestMethod1(string file)
        {
            var sourceFilePath = Path.Combine(baseTestPath, file);       
            var llvmFilePath = Path.Combine(baseTestPath, file + ".ll");
            var refPath = Path.Combine(baseTestPath, file.Split('.')[0] + "_ref.txt");
            var exeOutputPath = Path.Combine(baseTestPath, file.Split('.')[0] + "_output.txt");
            var exeInputPath = Path.Combine(baseTestPath, file.Split('.')[0] + "_input.txt");
            // Compile
            Assert.IsTrue(File.Exists(refPath));
            var mainRes = Compiler.Main(new string[] { sourceFilePath });
            Assert.AreEqual(0, mainRes);
            Assert.IsTrue(File.Exists(llvmFilePath));

            // Run compiled
            var ps = PowerShell.Create();
            if (File.Exists(exeInputPath))
                ps.AddScript($@"Get-Content {exeInputPath} | lli.exe {llvmFilePath} > {exeOutputPath}");
            else
                ps.AddScript($@"lli.exe {llvmFilePath} > {exeOutputPath}");
            ps.Invoke();
            Assert.IsTrue(File.Exists(exeOutputPath));

            using (var refReader = new StreamReader(refPath))
            {
                using (var outputReader = new StreamReader(exeOutputPath))
                {
                    string refLine, resLine;
                    while ((refLine = refReader.ReadLine()) != null)
                    {
                        resLine = outputReader.ReadLine();
                        Assert.IsNotNull(resLine);
                        Assert.AreEqual(refLine, resLine);
                    }
                    Assert.IsNull(outputReader.ReadLine());
                }
            }
        }
    }
}
