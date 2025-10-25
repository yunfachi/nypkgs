{
  age,
  sops,
  stdenvNoCC,
  lib,
  linkFarm,
  ...
}:
{
  sops-decrypt =
    {
      path,
      publicAge ? null,
      privateKeysFile,
      key ? "",
    }:
    stdenvNoCC.mkDerivation {
      name = "sops-decrypt-${builtins.baseNameOf path}";
      src = linkFarm "sops-decrypt-src" ([
        {
          name = baseNameOf path;
          inherit path;
        }
        {
          name = "keys.txt";
          path = privateKeysFile;
        }
      ]
      #++ (
      #  if (builtins.pathExists (path + "/../.sops.yaml"))
      #  then [
      #    {
      #      name = "sops.yaml";
      #      path = path + "/../.sops.yaml";
      #    }
      #  ]
      #  else []
      #)
      );
      buildInputs = [
        age
        sops
      ];
      buildPhase =
        with lib;
        let
          ageArg = optionalString (publicAge != null) "--age '${publicAge}'";
          extractArg =
            optionalString (key != "")
              "--extract '${lib.concatMapStrings (x: ''["${x}"]'') (lib.splitString "/" key)}'";
        in
        ''
          export SOPS_AGE_KEY_FILE=keys.txt;

          sops ${ageArg} ${extractArg} --decrypt "./${baseNameOf path}" > $out
        '';
      preferLocalBuild = true;
      allowSubstitutes = false;
    };
}
