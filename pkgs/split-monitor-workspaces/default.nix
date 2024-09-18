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
  version = "1.2.0";

  src = fetchFromGitHub {
    owner = "Duckonaut";
    repo = pname;
    rev = "b6bc0c26c8ad9e08f5f29249f8511e6f01e92e09";
    hash = "sha256-uYDB0uXSgmEk2syJ9Et0q3RTIBtEHelcM6T8OT222fg=";
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

  meta = {
    homepage = "https://github.com/Duckonaut/split-monitor-workspaces";
    description = "Small Hyprland plugin to provide awesome-like workspace behavior";
    license = lib.licenses.bsd3;
    platforms = hyprland.meta.platforms;
    maintainers = with lib.maintainers; [yunfachi];
  };
}
