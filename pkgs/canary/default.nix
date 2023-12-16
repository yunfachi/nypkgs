{
  lib,
  stdenvNoCC,
  fetchFromGitHub,
  gzip,
}:
stdenvNoCC.mkDerivation rec {
  pname = "canary";
  version = "unstable-2022-6-29";

  src = fetchFromGitHub {
    owner = "Apsu";
    repo = "Canary";
    rev = "28eb53356ec0b30f0794d178d096159366da7aee";
    sha256 = "sha256-rIOp77IsuIEkfSmMcQymmGX8d3nLkt7UZESn8K4WLXE=";
    sparseCheckout = ["console"];
  };

  installPhase = ''
    runHook preInstall

    mkdir -p $out/share/X11/xkb/symbols/
    cp ./canary $out/share/X11/xkb/symbols

    mkdir -p $out/share/keymaps/i386/canary/
    gzip ./console/canary.map
    mv ./console/canary.map.gz $out/share/keymaps/i386/canary

    runHook postInstall
  '';

  meta = with lib; {
    homepage = "https://github.com/Apsu/Canary";
    description = "Canary keyboard layout";
    license = licenses.mit;
    platforms = platforms.linux;
    maintainers = with maintainers; [yunfachi];
  };
}
