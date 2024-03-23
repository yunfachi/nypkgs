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
    concatMapStrings (
      line:
        if (strippedHasSuffix ";" line || line == "")
        then line
        else if (strippedHasSuffix "\\" line)
        then strippedRemoveSuffix "\\" line
        else line + ";"
    ) (splitString "\n" command);
}
