{lib ? (import <nixpkgs> {}).lib, ...}: {
  concatLinesWithSemicolon = command:
    lib.concatStrings (builtins.map (line:
      if (lib.hasSuffix ";" line || line == "")
      then line
      else line + ";") (lib.splitString "\n" command));
}
