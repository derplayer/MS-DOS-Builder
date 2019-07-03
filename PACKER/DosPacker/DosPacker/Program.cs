using DiscUtils;
using DiscUtils.Fat;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace DosPacker
{
    
    public class Program
    {
        [STAThread]
        public static void Main(string[] args)
        {
            //Use filepicker
            string execpath = AppDomain.CurrentDomain.BaseDirectory;
            string filePath = AppDomain.CurrentDomain.BaseDirectory + "\\build.exe";

            if (!File.Exists(execpath+"\\build.exe"))
            {
                //Pick "builder.exe"
                using (OpenFileDialog openFileDialog = new OpenFileDialog())
                {
                    //openFileDialog.InitialDirectory = "c:\\";
                    openFileDialog.Filter = "build exe|build.exe";
                    //openFileDialog.FilterIndex = 2;
                    openFileDialog.RestoreDirectory = true;

                    if (openFileDialog.ShowDialog() == DialogResult.OK)
                    {
                        filePath = openFileDialog.FileName;
                    }
                    else
                    {
                        Console.WriteLine("Exit...");
                        return;
                    }
                }
            }

            //Get the path of specified file
            string dirName = Path.GetDirectoryName(filePath);
            string blankName = dirName + "\\PACKER\\BLANK_IMAGE.IMG";
            string exportName = dirName + "\\FLOPPY_PACKED.IMG";
            string folderExportName = dirName + "\\SOURCE\\_EXPORT";
            Console.WriteLine("Loaded!");

            try
            {
                File.Delete(exportName);
                Console.WriteLine("Old export image deleted and deleted!");
            }
            catch (Exception)
            {
                Console.WriteLine("No export image found! Create new..");
            }


            File.Copy(blankName, exportName);

            FileAttributes sysdefAttr = FileAttributes.ReadOnly | FileAttributes.Hidden | FileAttributes.Archive | FileAttributes.System;

            //TODO: for now a blank image is used with a predefined mbr sector
            using (FileStream fs = File.Open(exportName, FileMode.Open, FileAccess.ReadWrite))
            {
                using (FatFileSystem floppy = new FatFileSystem(fs))
                {
                    Console.WriteLine("Floppy template stream is is open!");

                    //In this order, or mbr will fail
                    using (Stream s = floppy.OpenFile(new FileInfo("IO.SYS").Name, FileMode.Create))
                    {
                        var x = File.ReadAllBytes(folderExportName + "\\IO.SYS");
                        s.Write(x, 0, x.Length);
                        Console.WriteLine("IO.SYS is OK!");
                    }
                    floppy.SetAttributes("\\IO.SYS", sysdefAttr);

                    using (Stream s = floppy.OpenFile(new FileInfo("MSDOS.SYS").Name, FileMode.Create))
                    {
                        var x = File.ReadAllBytes(folderExportName + "\\MSDOS.SYS");
                        s.Write(x, 0, x.Length);
                        Console.WriteLine("MSDOS.SYS is OK!");
                    }
                    floppy.SetAttributes("\\MSDOS.SYS", sysdefAttr);

                    using (Stream s = floppy.OpenFile(new FileInfo("COMMAND.COM").Name, FileMode.Create))
                    {
                        var x = File.ReadAllBytes(folderExportName + "\\COMMAND.COM");
                        s.Write(x, 0, x.Length);
                        Console.WriteLine("COMMAND.COM is OK!");
                    }

                    //foreach (var i in Directory.GetFiles(folderExportName))
                    //{
                    //    using (Stream s = floppy.OpenFile(new FileInfo(i).Name, FileMode.Create))
                    //    {
                    //        var x = File.ReadAllBytes(i);
                    //        s.Write(x, 0, x.Length);
                    //    }
                    //}
                }
            }

            Console.WriteLine("Press a key to close!");
            Console.ReadKey();
            return;
        }
    }

}
