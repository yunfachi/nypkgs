{ buildFirefoxXpiAddon, fetchurl, lib, stdenv }:
  {
    "coffee_theme_firefox" = buildFirefoxXpiAddon {
      pname = "coffee_theme_firefox";
      version = "1.1";
      addonId = "{b6eea96e-968f-4360-8592-76d23d3eee99}";
      url = "https://addons.mozilla.org/firefox/downloads/file/3904641/coffee_theme_firefox-1.1.xpi";
      sha256 = "f3ece3760bcbc13343fb20fecab2e03b744e43c1601d5e0771c646647a63b230";
      meta = with lib;
      {
        homepage = "https://github.com/coffee-theme/coffee.firefox";
        description = "Coffee is a nice, warm colour scheme for software based of gruvbox which is light on eye strain and feels warm and cozy -- firefox";
        license = licenses.cc-by-nc-sa-30;
        mozPermissions = [];
        platforms = platforms.all;
      };
    };
    "shikiplayer" = buildFirefoxXpiAddon {
      pname = "shikiplayer";
      version = "5.4.0";
      addonId = "{e6624e6b-2351-4a1d-b7b7-c714fffee424}";
      url = "https://addons.mozilla.org/firefox/downloads/file/4226497/shikiplayer-5.4.0.xpi";
      sha256 = "0d73515982b273e1ce01795922703bc55124ac10ff78450b8987ec306e12ac6a";
      meta = with lib;
      {
        homepage = "https://github.com/qt-kaneko/Shikiplayer";
        description = "Adds Kodik player to Shikimori website";
        mozPermissions = [
          "*://kodikapi.com/*"
          "*://raw.githubusercontent.com/*"
          "*://shikimori.me/*"
          "*://shikimori.one/*"
          "*://kodik.info/*"
        ];
        platforms = platforms.all;
      };
    };
  }