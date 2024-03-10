{ buildFirefoxXpiAddon, fetchurl, lib, stdenv }:
  {
    "browser-mopidy-youtube" = buildFirefoxXpiAddon {
      pname = "browser-mopidy-youtube";
      version = "0.1.1";
      addonId = "{0050e3fa-15cc-4fb6-9c73-7354489a810b}";
      url = "https://addons.mozilla.org/firefox/downloads/file/4247645/browser_mopidy_youtube-0.1.1.xpi";
      sha256 = "147b20385fb6c96fd6955e315b4accd7730b4b0b25b0178832781fc62c26d18c";
      meta = with lib;
      {
        homepage = "https://github.com/yunfachi/browser-mopidy-youtube";
        description = "Browser extension for adding active YouTube video to the mopidy queue";
        license = licenses.mpl20;
        mozPermissions = [ "activeTab" "storage" ];
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