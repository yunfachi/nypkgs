{
  ylib,
  lib,
  ...
}: {
  color = color: let
    regex = builtins.match "^#?([0-9a-fA-F]{6})$" color;
    valid = regex == null;
  in rec {
    value = builtins.elemAt regex 0;
    __toString = _: value; # "FFFFFF"

    number = toString (ylib.hexToDec value); # "16777215"

    hex = "#${value}"; # "#FFFFFF"
    prefixHex = "0x${value}"; # "0xFFFFFF"

    rgbList = map (start: toString (ylib.hexToDec (builtins.substring start 2 value))) [0 2 4]; # [255, 255, 255]
    rgbSep = sep: lib.concatStringsSep sep rgbList; # "255<sep>255<sep>255"
    rgb = rgbSep ","; # "255,255,255"
  };
}
