{
  lib,
  gcc13Stdenv,
  fetchFromGitHub,
  meson,
  ninja,
  pkg-config,
  hyprland,
  pango,
  cairo,
}:
gcc13Stdenv.mkDerivation rec {
  pname = "split-monitor-workspaces";
  version = "1.1.0";

  src = fetchFromGitHub {
    owner = "Duckonaut";
    repo = pname;
    rev = "b0ee3953eaeba70f3fba7c4368987d727779826a";
    hash = "sha256-M9nGSYBieZNg/OgLqL7bX0S9Khlh4MFca0euGKwbuG4=";
  };

  BUILT_WITH_NOXWAYLAND = false;

  nativeBuildInputs = [meson ninja pkg-config];
  buildInputs =
    [
      hyprland
      pango
      cairo
    ]
    ++ hyprland.buildInputs;

  meta = with lib; {
    homepage = "https://github.com/Duckonaut/split-monitor-workspaces";
    description = "A small Hyprland plugin to provide awesome-like workspace behavior";
    license = licenses.bsd3;
    platforms = hyprland.meta.platforms;
    maintainers = with maintainers; [yunfachi];
  };
}
