{pkgs, ...}: rec {
  pathToStore = path:
    (pkgs.linkFarm "path2store" [
      {
        name = "path";
        inherit path;
      }
    ])
    .outPath
    + "/path";

  /*
  read file by absolute path in pure mode
  */
  readAbsoluteFile = path: builtins.readFile (pathToStore path);
}
