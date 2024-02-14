{lib, ylib, ...}: let
  hexToDecAttrs = {
    "0" = 0; "4" = 4; "8" = 8;  "c" = 12;
    "1" = 1; "5" = 5; "9" = 9;  "d" = 13;
    "2" = 2; "6" = 6; "a" = 10; "e" = 14;
    "3" = 3; "7" = 7; "b" = 11; "f" = 15;
  };
in rec {
  hexCharToDec = char: hexToDecAttrs.${char};
  hexToDec = hex: with lib; let
    decimals = map hexCharToDec (stringToCharacters (toLower hex));
    decimalsAscending = reverseList decimals;
    decimalsPowered = imap0 ylib.polynomialEvalHex decimalsAscending;
  in foldl builtins.add 0 decimalsPowered;
}