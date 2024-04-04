{ buildFirefoxXpiAddon, fetchurl, lib, stdenv }:
  {
    "browser-mopidy-youtube" = buildFirefoxXpiAddon {
      pname = "browser-mopidy-youtube";
      version = "0.2.0";
      addonId = "{0050e3fa-15cc-4fb6-9c73-7354489a810b}";
      url = "https://addons.mozilla.org/firefox/downloads/file/4254224/browser_mopidy_youtube-0.2.0.xpi";
      sha256 = "b81fa88a5c59d50a04fc5767001492fda5017c8cf871700abf5b3e51791af7d6";
      meta = with lib;
      {
        homepage = "https://github.com/yunfachi/browser-mopidy-youtube";
        description = "Browser extension for adding active YouTube video to the mopidy queue";
        license = licenses.mpl20;
        mozPermissions = [ "activeTab" "storage" "contextMenus" ];
        platforms = platforms.all;
      };
    };
    "deshiro" = buildFirefoxXpiAddon {
      pname = "deshiro";
      version = "0.4.4";
      addonId = "{e75d9f2d-9270-4f16-94e1-abd73c5174f8}";
      url = "https://addons.mozilla.org/firefox/downloads/file/4260052/deshiro-0.4.4.xpi";
      sha256 = "5dbdfc8271112325c929e71dc457e49eb71f6919a032bda184385437afd07566";
      meta = with lib;
      {
        homepage = "https://github.com/deshiro/browser-extension";
        description = "The Deshiro browser extension for the Shikimori website";
        mozPermissions = [
          "*://deshiro.pages.dev/*"
          "*://kodikapi.com/*"
          "nativeMessaging"
          "activeTab"
          "storage"
          "*://*.shikimori.one/*"
          "*://*.shikimori.me/*"
        ];
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
  }