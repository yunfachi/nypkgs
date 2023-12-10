inputs @ {
  path,
  include ? [],
  exclude ? [],
  copyToStore ? false,
}: let
  currentFile = builtins.unsafeGetAttrPos "path" inputs;
in
  builtins.filter (x: x != null) (
    builtins.map (
      n: (
        if
          !(builtins.elem (path + "/${n}") (
            if currentFile != null
            then exclude ++ [(/. + "${currentFile.file}")]
            else exclude
          ))
        then
          (
            if copyToStore
            then "${path}/${n}"
            else builtins.toString path + "/${n}"
          )
        else null
      )
    ) (
      builtins.attrNames (
        builtins.readDir path
      )
    )
  )
  ++ builtins.map
  (
    n: (
      if copyToStore
      then "${n}"
      else toString n
    )
  )
  include
