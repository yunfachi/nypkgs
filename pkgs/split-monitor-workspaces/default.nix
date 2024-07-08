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
    rev = "a03a32c6e0f64c05c093ced864a326b4ab58eabf";
    hash = "sha256-JeTl1RMgtN77JwufVmZko0ixpnnsZwcdpcPVWX+gdw0=";
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
