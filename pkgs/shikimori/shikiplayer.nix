{
  stdenvNoCC,
  nodejs,
  esbuild,
}:
stdenvNoCC.mkDerivation rec {
  name = "shikiplayer";

  src = builtins.fetchGit {
    url = "https://github.com/qt-kaneko/Shikiplayer";
    rev = "d0baeddfb3c41fd8ae109c6a75aee60a92288cca";
    narHash = "sha256-af9+8pxiogoD0yQW0t4i3ATaEv1m81P++7GZlNw2IsM=";
  };

  buildInputs = [nodejs esbuild];
  buildPhase = ''
    node build.js chrome
    cp -r dist $out/
  '';
}
