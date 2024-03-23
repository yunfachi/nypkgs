{lib, ...}:
with lib; rec {
  strippedHasSuffix = suffix: string:
    hasSuffix suffix (replaceStrings [" "] [""] string);

  strippedRemoveSuffix = suffix: string: let
    splitted = splitString suffix string;
  in
    lib.concatStrings (
      if ((lib.replaceStrings [" "] [""] (lib.last splitted)) == "")
      then lib.lists.init splitted
      else splitted
    );

  concatLinesWithSemicolon = command:
    lib.concatStrings (builtins.map (line:
      if (lib.hasSuffix ";" line || line == "")
      then line
      else line + ";") (lib.splitString "\n" command));
}
