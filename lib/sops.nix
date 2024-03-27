{
  age,
  sops,
  stdenvNoCC,
  ...
}: {
  sops-decrypt = {
    path,
    publicAge,
    privateAgeFile,
  }: let
    privateAgeFileModule = stdenvNoCC.mkDerivation {
      name = "privateAgeFile";
      src = privateAgeFile + "/..";
      buildPhase = ''
        mkdir $out
        cp ${builtins.baseNameOf privateAgeFile} $out/keys.txt
      '';
    };
  in
    (stdenvNoCC.mkDerivation {
      name = "sops-decrypt-${builtins.baseNameOf path}";
      src = path + "/..";
      env = {
        SOPS_AGE_KEY_FILE = privateAgeFileModule + "/keys.txt";
      };
      buildInputs = [age sops];
      buildPhase = ''
        sops --age "${publicAge}" --decrypt "./${builtins.baseNameOf path}" > "$out"
      '';
    })
    .outPath;
}
