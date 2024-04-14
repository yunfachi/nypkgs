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
    rev = "be857d4415c136bccdd1c255cbf2c062c730cc38";
    hash = "sha256-e92Hf6+2URgQ06FV4rrVtHLMNug8F2jHpptduZ/qiXg=";
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
