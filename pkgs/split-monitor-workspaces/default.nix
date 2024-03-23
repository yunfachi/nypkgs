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
  version = "0.1";

  src = fetchFromGitHub {
    owner = "Duckonaut";
    repo = pname;
    rev = "d0012b8b0f764e32dd7b82f7a94b8c30197d7dc8";
    hash = "sha256-3qcLLe+LqC1YAdqpKtU1COlxzb5uqpTMYgwmleS2oRg=";
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
