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
    rev = "f7a306396da163422048fd38eecd92c68ce21e58";
    hash = "sha256-P4sDyicbLlc8YmMy7p2RfDshsuShfZgpIlOx3hRWvGs=";
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
