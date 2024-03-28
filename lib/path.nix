{pkgs, ...}: rec {
  _pathToStore = path:
    (pkgs.linkFarm "path2store" [
      {
        name = "path";
        inherit path;
      }
    ])
    .outPath;
  pathToStore = path: (_pathToStore path + "/path");

  /*
  read file by absolute path in pure mode
  */
  readAbsoluteFile = path: builtins.readFile (pathToStore path);
  readCanonicalFile = path:
    builtins.readFile (pkgs.stdenv.mkDerivation {
      name = "readCanonicalFile";
      src = _pathToStore (/. + path);
      buildPhase = ''cat path > $out'';
    });
}
