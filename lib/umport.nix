inputs @ {
  path,
  include ? [],
  exclude ? [],
  copyToStore ? false,
}: let
  currentFile = builtins.unsafeGetAttrPos "path" inputs;
in
  builtins.map (n: (
    if copyToStore
    then "${path}/${n}"
    else toString path + "/${n}"
  )) (builtins.attrNames (builtins.removeAttrs (builtins.readDir path) ((
      if currentFile != null
      then [(builtins.baseNameOf currentFile.file)]
      else []
    )
    ++ (map (path: (builtins.baseNameOf path)) exclude))))
  ++ builtins.map (n: (
    if copyToStore
    then "${n}"
    else toString n
  ))
  include
