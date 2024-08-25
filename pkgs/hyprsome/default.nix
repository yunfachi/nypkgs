{ lib
, rustPlatform
, fetchCrate
}:

rustPlatform.buildRustPackage rec {
  pname = "hyprsome";
  version = "0.1.12";

  src = fetchCrate {
    inherit pname version;
    hash = "sha256-04FOGoxF1Evxch06rV5DcbcWnsu0uF9F9zQOBu/PNGo=";
  };
  cargoHash = "sha256-OVtfoTcohMLBV+W0wbKtAxfnmjFGUJbs70nLts39g+U=";

  meta = with lib; {
    description = "Awesome-like workspaces for Hyprland";
    homepage = "https://crates.io/crates/hyprsome";
    license = licenses.gpl3;
    maintainers = with maintainers; [ hhydraa ];
    platforms = platforms.linux;
  };
}
