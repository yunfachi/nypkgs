{ buildFirefoxXpiAddon, fetchurl, lib, stdenv }:
  {
    "browser-mopidy-youtube" = buildFirefoxXpiAddon {
      pname = "browser-mopidy-youtube";
      version = "0.1.2";
      addonId = "{0050e3fa-15cc-4fb6-9c73-7354489a810b}";
      url = "https://addons.mozilla.org/firefox/downloads/file/4250272/browser_mopidy_youtube-0.1.2.xpi";
      sha256 = "1f71b011329654063b8f75e04be8ee1c3cc8a40bf2c98d8e96c1769178cad5ad";
      meta = with lib;
      {
        homepage = "https://github.com/yunfachi/browser-mopidy-youtube";
        description = "Browser extension for adding active YouTube video to the mopidy queue";
        license = licenses.mpl20;
        mozPermissions = [ "activeTab" "storage" "contextMenus" ];
        platforms = platforms.all;
      };
    };
    "sepia-coffee-v1" = buildFirefoxXpiAddon {
      pname = "sepia-coffee-v1";
      version = "1.0";
      addonId = "{0d48da55-7195-4662-aafc-934d90cb26c2}";
      url = "https://addons.mozilla.org/firefox/downloads/file/3444965/sepia_coffee_v1-1.0.xpi";
      sha256 = "4f06ee7230a755d22e923b48919d7640c1a31c9af6c286963c5dd0bd98ae918c";
      meta = with lib;
      {
        description = "flat theme to go with the sepia dark mode option of dark reader\ndark brown, khaki, grey, black, solarised, solarized tones";
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