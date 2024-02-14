{ylib, lib, ...}: {
  color = color: let
    regex = builtins.match "^#?([0-9a-fA-F]{6})$" color;
    valid = regex == null;
  in rec {
    value = builtins.elemAt regex 0;
    __toString = _: value; # "FFFFFF"

    number = {
      value = toString (ylib.hexToDec value);
      __toString = self: self.value; # "16777215"
    };

    hex = {
      value = "#${value}";
      __toString = self: self.value; # "#FFFFFF"
    };
    prefixHex = {
      value = "0x${value}";
      __toString = self: self.value; # "0xFFFFFF"
    };

    rgbList = map (start: toString (ylib.hexToDec (builtins.substring start 2 value))) [0 2 4]; # [255, 255, 255]
    rgbSep = sep: {
      value = lib.concatStringsSep sep rgbList;
      __toString = self: self.value; # "255<sep>255<sep>255"
    };
    rgb = {
      value = rgbSep ",";
      __toString = self: self.value; # "255,255,255"
    };
  };
}
