﻿using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.IO;
using System.IO.Compression;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ATT
{
    /// <summary>
    /// The type of build to create by running this tool.
    /// </summary>
    enum BuildType
    {
        Alpha,
        Beta,
        Release
    }

    class Program
    {
        /// <summary>
        /// The type of build that will be generated by running this tool.
        /// </summary>
        static BuildType CurrentBuildType = BuildType.Release;

        /// <summary>
        /// All of the file extensions that have been blacklisted.
        /// </summary>
        static Dictionary<string, bool> BLACKLISTED_FILE_EXTENSIONS = new Dictionary<string, bool>
        {
            { ".bat", true },
            { ".dll", true },
            { ".editorconfig", true },
            { ".exe", true },
            { ".gitattributes", true },
            { ".gitignore", true },
            { ".lnk", true },
            { ".pkgmeta", true },
            { ".yml", true },
            { ".zip", true },
        };

        /// <summary>
        /// All of the file names that have been blacklisted.
        /// </summary>
        static Dictionary<string, bool> BLACKLISTED_FILE_NAMES = new Dictionary<string, bool>
        {
            
        };

        static void Main(string[] args)
        {
            var rootDirectory = "../..";
            if (args != null && args.Length > 0)
            {
                foreach (var arg in args)
                {
                    switch (arg.ToLower())
                    {
                        case "alpha": CurrentBuildType = BuildType.Alpha; break;
                        case "beta": CurrentBuildType = BuildType.Beta; break;
                        case "live":
                        case "release": CurrentBuildType = BuildType.Release; break;
                        default:
                            // Ensure the directory exists.
                            if (Directory.Exists(arg)) rootDirectory = arg;
                            else
                            {
                                Console.WriteLine("Invalid argument:");
                                Console.WriteLine(arg);
                                Console.WriteLine("Attempt to build on the supplied directory failed.");
                            }
                            break;
                    }
                }
            }

            // Build the root addon directory.
            Build(Directory.CreateDirectory(rootDirectory));
        }

        /// <summary>
        /// Build the addon from the 
        /// </summary>
        /// <param name="directory"></param>
        static void Build(DirectoryInfo directory)
        {
            Console.Write("BUILD >> ");
            Console.WriteLine(directory.FullName);

            // Attempt to pull from Git.
            GitPull();

            // Parse the Current Version Number, if possible. (For WoW Addons, this is stored in the .TOC file.)
            var TableOfContentFiles = directory.GetFiles("*.toc", SearchOption.TopDirectoryOnly);
            if (!TableOfContentFiles.Any())
            {
                Console.WriteLine("ERROR: NO TABLE OF CONTENT (.toc) FILES FOUND.");
                Console.WriteLine("Cannot proceed with the build. Press Enter to Close.");
                Console.ReadLine();
                return;
            }
            string version = null, oldversion = null;
            foreach (var tocFile in TableOfContentFiles)
            {
                var lines = File.ReadAllLines(tocFile.FullName);
                for (var i = 0;i < lines.Length; ++i)
                {
                    var line = lines[i];
                    if (line.StartsWith("## Version"))
                    {
                        // Found it! Let's parse!
                        version = CalculateNextVersion(oldversion = line.Substring(line.IndexOf(':') + 1).Trim());

                        // Report the next version and replace the current line.
                        lines[i] = "## Version: " + version;
                        Console.Write("VERSION >> ");
                        Console.WriteLine(version);
                        break;
                    }
                }
                if (string.IsNullOrEmpty(version))
                {
                    Console.WriteLine("ERROR: FAILED TO PARSE VERSION.");
                    Console.WriteLine("Cannot proceed with the build. Press Enter to Close.");
                    Console.ReadLine();
                    return;
                }

                // Write back the lines to the file.
                File.WriteAllLines(tocFile.FullName, lines);
                GitAddChange(tocFile.Name);
                break;
            }

            // Attempt to Commit the TOC change to the Git
            GitCommitChanges(version);

            // Determine the name of the ZIP File.
            var ZipFileName = Path.Combine(directory.FullName, $".contrib/.builds/{directory.Name}-{version.Replace('.', '_')}_{CurrentBuildType}.zip");
            Directory.CreateDirectory(Path.GetDirectoryName(ZipFileName));
            using (var zipFile = ZipFile.Open(ZipFileName, ZipArchiveMode.Create))
            {
                var addonDirectory = directory.Name + "/";
                CompressDirectory(zipFile, directory, addonDirectory);

                // Write the changes for this patch to a log file.
                using (StreamWriter writer = new StreamWriter(zipFile.CreateEntry(addonDirectory + "CHANGELOG.txt").Open()))
                {
                    writer.WriteLine(GitGatherChanges(oldversion, version));
                }
            }
            Console.WriteLine("ZIP File Created Successfully:");
            Console.WriteLine(ZipFileName);
            Process.Start(Path.GetDirectoryName(ZipFileName));
        }
    
        /// <summary>
        /// Calculate the next appropriate version number for the given version based on build type.
        /// </summary>
        /// <param name="version">The version number.</param>
        /// <returns>A version number structured based on build type.</returns>
        static string CalculateNextVersion(string version)
        {
            // Create a list of numbers used for the version.
            var parts = version.Split(new char[] { '.' }, StringSplitOptions.RemoveEmptyEntries);
            var expected_length = Math.Max(parts.Length, 3);
            var max_numbers = new int[expected_length];
            var numbers = new int[expected_length];
            for (var i = parts.Length - 1;i >= 0;--i)
            {
                var part = parts[i].Split(' ', '(')[0];
                if (!int.TryParse(part, out int number)) number = 0;
                max_numbers[i] = (int)Math.Pow(10, part.Length) - 1;
                numbers[i] = number;
            }

            // Determine which part of the numbers list to increment.
            var index = CalculateVersionIndex();

            // Zero out the numbers following the index.
            for (int i = numbers.Length - 1;i > index;--i) numbers[i] = 0;

            // Increment the index, if it surpasses the max, increment the next number.
            while (++numbers[index] > max_numbers[index] && index > 0)
            {
                if (--index > 0) numbers[index + 1] = 0;
            }

            // Convert the numbers back into a string.
            var builder = new StringBuilder(numbers[0].ToString());
            int j = 1;
            for (; j < parts.Length; ++j)
            {
                builder.Append('.').Append(numbers[j].ToString().PadLeft(parts[j].Length, '0'));
            }
            for (;j < numbers.Length;++j)
            {
                builder.Append('.').Append(numbers[j]);
            }
            return builder.ToString();
        }

        /// <summary>
        /// Calculate the version index to increment based on the build type.
        /// </summary>
        /// <returns>The version index.</returns>
        static int CalculateVersionIndex()
        {
            switch (CurrentBuildType)
            {
                // NOTE: Change this to something else if you want Alpha and Betas to have their own version section.
                case BuildType.Alpha: return 2;
                case BuildType.Beta: return 2;
                case BuildType.Release: return 2;
                default: return 0;
            }
        }

        /// <summary>
        /// Compress the Directory into the ZIP Archive.
        /// </summary>
        /// <param name="zipFile">The ZIP File.</param>
        /// <param name="root">The root directory to compress into the archive.</param>
        /// <param name="rootPath">The root path to compress relative to.</param>
        static void CompressDirectory(ZipArchive zipFile, DirectoryInfo root, string rootPath = "")
        {
            // Blacklisted folder names.
            switch (root.Name)
            {
                case ".git":
                case ".contrib":
                case ".builds":
                case ".tools": return;
                default: break;
            }

            // Write all of the sub directories.
            foreach (var subdirectory in root.GetDirectories())
            {
                CompressDirectory(zipFile, subdirectory, rootPath + subdirectory.Name + "/");
            }

            // Write all of the files.
            foreach (var file in root.GetFiles())
            {
                // Skip blacklisted files and extensions.
                if (IsFileBlacklisted(file)) continue;

                // Compress the file into the ZIP File.
                var filename = $"{rootPath}{file.Name}";
                Console.WriteLine(filename);
                if (file.Extension.ToLower() == ".lua")
                {
                    // Add special build type command parsing / optimizations before writing source files.
                    using (StreamWriter writer = new StreamWriter(zipFile.CreateEntry(filename).Open()))
                    {
                        CompressFile(writer, file.FullName);
                    }
                }
                else
                {
                    // Non-Source Files can simply be copied over without modification.
                    zipFile.CreateEntryFromFile(file.FullName, filename);
                }
            }
        }

        /// <summary>
        /// Compress the File into the ZIP Archive.
        /// </summary>
        /// <param name="writer">The writer used by the ZIP Archive.</param>
        /// <param name="fullname">The name of the file to write into the archive.</param>
        static void CompressFile(StreamWriter writer, string fullname)
        {
            using (var reader = File.OpenText(fullname))
            {
                string line, trimmedLine;
                while ((line = reader.ReadLine()) != null)
                {
                    trimmedLine = line.TrimStart();
                    if (trimmedLine.StartsWith("// WARNING: EXCLUDED DYNAMIC SECTION"))
                    {
                        // This file will require parsing.
                        while ((line = reader.ReadLine()) != null)
                        {
                            if (line.TrimStart().StartsWith("// WARNING: END EXCLUDED DYNAMIC SECTION")) break;
                        }
                    }
                    else
                    {
                        writer.WriteLine(line);
                        writer.WriteLine();
                    }
                }
            }
        }

        /// <summary>
        /// Attempt to add the path modification to the Git.
        /// </summary>
        /// <param name="path">The path.</param>
        static void GitAddChange(string path)
        {
            // Commit all changes to the Git
            Console.Write("COMMIT >> ");
            Console.WriteLine(path);
            Console.WriteLine(Path.GetFullPath("../.."));
            using (Process p = new Process())
            {
                var startInfo = new ProcessStartInfo("git", $"add {path}")
                {
                    UseShellExecute = false,
                    RedirectStandardOutput = true,
                    WorkingDirectory = Path.GetFullPath("../..")
                };
                p.StartInfo = startInfo;
                p.Start();
                p.WaitForExit();
            }
        }

        /// <summary>
        /// Attempt to commit the version changes to the Git.
        /// </summary>
        /// <param name="version">The version.</param>
        static void GitCommitChanges(string version)
        {
            // Commit all changes to the Git
            Console.WriteLine("COMMIT >>");
            using (Process p = new Process())
            {
                var startInfo = new ProcessStartInfo("git", $"commit -m \"{CurrentBuildType.ToString().ToUpper()}: {version}\"")
                {
                    UseShellExecute = false,
                    RedirectStandardOutput = true,
                    WorkingDirectory = Path.GetFullPath("../..")
                };
                p.StartInfo = startInfo;
                p.Start();
                p.WaitForExit();
            }
            Console.WriteLine("TAG >>");
            using (Process p = new Process())
            {
                var startInfo = new ProcessStartInfo("git", $"tag {version}")
                {
                    UseShellExecute = false,
                    RedirectStandardOutput = true,
                    WorkingDirectory = Path.GetFullPath("../..")
                };
                p.StartInfo = startInfo;
                p.Start();
                p.WaitForExit();
            }
            Console.WriteLine("PUSH >>");
            using (Process p = new Process())
            {
                var startInfo = new ProcessStartInfo("git", $"push origin master")
                {
                    UseShellExecute = false,
                    RedirectStandardOutput = true,
                    WorkingDirectory = Path.GetFullPath("../..")
                };
                p.StartInfo = startInfo;
                p.Start();
                p.WaitForExit();
            }
            Console.WriteLine("PUSH TAG >>");
            using (Process p = new Process())
            {
                var startInfo = new ProcessStartInfo("git", $"push origin {version}")
                {
                    UseShellExecute = false,
                    RedirectStandardOutput = true,
                    WorkingDirectory = Path.GetFullPath("../..")
                };
                p.StartInfo = startInfo;
                p.Start();
                p.WaitForExit();
            }
        }

        /// <summary>
        /// Attempt to gather all of the changes between the tagged commits.
        /// </summary>
        /// <param name="oldversion">The old version.</param>
        /// <param name="version">The version.</param>
        /// <returns>The changes, if any.</returns>
        static string GitGatherChanges(string oldversion, string version)
        {
            // Perform a git log between the two commits.
            Console.WriteLine("LOG CHANGES >>");
            using (Process p = new Process())
            {
                var startInfo = new ProcessStartInfo("git", $"log {oldversion}..{version} --pretty=format:\"%an: %s\"")
                {
                    UseShellExecute = false,
                    RedirectStandardOutput = true,
                    WorkingDirectory = Path.GetFullPath("../..")
                };
                p.StartInfo = startInfo;
                p.Start();

                // Read the output stream first and then wait.
                string line;
                var commitsByAuthor = new Dictionary<string, List<string>>();
                while (!string.IsNullOrEmpty(line = p.StandardOutput.ReadLine()))
                {
                    var index = line.IndexOf(':');
                    var author = line.Substring(0, index).Split('-')[0];
                    var commit = line.Substring(index + 1).Trim();
                    if (commitsByAuthor.TryGetValue(author, out List<string> commits)) commits.Add(commit);
                    else commitsByAuthor[author] = new List<string> { commit };
                }
                p.WaitForExit();

                var builder = new StringBuilder();
                builder.Append(version).Append(" Release Notes");
                foreach (var pair in commitsByAuthor)
                {
                    builder.AppendLine();
                    builder.Append("Contributions made by ");
                    builder.Append(pair.Key);
                    builder.AppendLine(":");
                    pair.Value.Reverse();
                    foreach (var commit in pair.Value)
                    {
                        // Skip version number changes.
                        if (commit.StartsWith("ALPHA: ") || commit.StartsWith("RELEASE: ") || commit.StartsWith("BETA: ")) continue;

                        // Append a pretty summary of the author's changes.
                        builder.Append("* ");
                        if (commit.StartsWith("* ") || commit.StartsWith("- ")) builder.AppendLine(commit.Substring(2));
                        else if (commit.StartsWith("*") || commit.StartsWith("-")) builder.AppendLine(commit.Substring(1));
                        else builder.AppendLine(commit);
                    }
                }
                return builder.ToString();
            }
        }

        /// <summary>
        /// Attempt to pull changes from the Git.
        /// </summary>
        static void GitPull()
        {
            // Pull all changes from Git
            Console.WriteLine("PULL >> ");
            using (Process p = new Process())
            {
                var startInfo = new ProcessStartInfo("git", "pull")
                {
                    UseShellExecute = false,
                    RedirectStandardOutput = true,
                    WorkingDirectory = Path.GetDirectoryName("../..")
                };
                p.StartInfo = startInfo;
                p.Start();
                p.WaitForExit();
            }
        }

        /// <summary>
        /// Determine whether a given file is blacklisted or not.
        /// </summary>
        /// <param name="file">The file.</param>
        /// <returns>Whether or not the file is blacklisted.</returns>
        static bool IsFileBlacklisted(FileInfo file)
        {
            return BLACKLISTED_FILE_EXTENSIONS.ContainsKey(file.Extension.ToLower()) 
                || BLACKLISTED_FILE_NAMES.ContainsKey(file.Name.ToLower());
        }
    }
}