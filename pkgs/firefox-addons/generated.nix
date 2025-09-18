{ buildFirefoxXpiAddon, fetchurl, lib, stdenv }:
  {
    "bitwarden-password-manager" = buildFirefoxXpiAddon {
      pname = "bitwarden-password-manager";
      version = "2025.8.2";
      addonId = "{446900e4-71c2-419f-a6a7-df9c091e268b}";
      url = "https://addons.mozilla.org/firefox/downloads/file/4567044/bitwarden_password_manager-2025.8.2.xpi";
      sha256 = "0a6d986010d4845454083e2a02f81667b43dd7e4901693f4a7d0e7c67d9f7ffb";
      meta = with lib;
      {
        homepage = "https://bitwarden.com";
        description = "At home, at work, or on the go, Bitwarden easily secures all your passwords, passkeys, and sensitive information.";
        license = licenses.gpl3;
        mozPermissions = [
          "<all_urls>"
          "*://*/*"
          "alarms"
          "clipboardRead"
          "clipboardWrite"
          "contextMenus"
          "idle"
          "storage"
          "tabs"
          "unlimitedStorage"
          "webNavigation"
          "webRequest"
          "webRequestBlocking"
          "notifications"
          "file:///*"
        ];
        platforms = platforms.all;
      };
    };
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
      version = "0.5.2";
      addonId = "{e75d9f2d-9270-4f16-94e1-abd73c5174f8}";
      url = "https://addons.mozilla.org/firefox/downloads/file/4264100/deshiro-0.5.2.xpi";
      sha256 = "76e7a61931a8a1c8f69a80dff2ddc61241f6ee7158dba86e70cbbbdb15f9f620";
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
    "history-cleaner" = buildFirefoxXpiAddon {
      pname = "history-cleaner";
      version = "1.7.0";
      addonId = "{a138007c-5ff6-4d10-83d9-0afaf0efbe5e}";
      url = "https://addons.mozilla.org/firefox/downloads/file/4403189/history_cleaner-1.7.0.xpi";
      sha256 = "9ea2580067ebb99273e5a5b1a68e3e647b8e057d7246a58c6512599c07fcf14d";
      meta = with lib;
      {
        homepage = "https://github.com/Rayquaza01/HistoryCleaner";
        description = "Deletes browsing history older than a specified number of days.";
        license = licenses.mit;
        mozPermissions = [ "history" "storage" "idle" "alarms" ];
        platforms = platforms.all;
      };
    };
    "new-tab-homepage" = buildFirefoxXpiAddon {
      pname = "new-tab-homepage";
      version = "0.6.3resigned1";
      addonId = "{66E978CD-981F-47DF-AC42-E3CF417C1467}";
      url = "https://addons.mozilla.org/firefox/downloads/file/4270256/new_tab_homepage-0.6.3resigned1.xpi";
      sha256 = "89f45037c2dbba6cd82940a70de315863f3929ded8fe1873bb5b6994867b47ab";
      meta = with lib;
      {
        homepage = "http://www.basson.at/firefox-addons/newtabhomepage";
        description = "A very simple tabbed browsing extension that loads your homepage when you open a new tab. If you have multiple homepages, the first is chosen.";
        mozPermissions = [ "tabs" "browserSettings" "history" "<all_urls>" ];
        platforms = platforms.all;
      };
    };
    "ublock-origin" = buildFirefoxXpiAddon {
      pname = "ublock-origin";
      version = "1.66.0";
      addonId = "uBlock0@raymondhill.net";
      url = "https://addons.mozilla.org/firefox/downloads/file/4573289/ublock_origin-1.66.0.xpi";
      sha256 = "155820bace5bf7c8ba547e27678a4a25251131c54904f02f5bf340996f6fdbdc";
      meta = with lib;
      {
        homepage = "https://github.com/gorhill/uBlock#ublock-origin";
        description = "Finally, an efficient wide-spectrum content blocker. Easy on CPU and memory.";
        license = licenses.gpl3;
        mozPermissions = [
          "alarms"
          "dns"
          "menus"
          "privacy"
          "storage"
          "tabs"
          "unlimitedStorage"
          "webNavigation"
          "webRequest"
          "webRequestBlocking"
          "<all_urls>"
          "http://*/*"
          "https://*/*"
          "file://*/*"
          "https://easylist.to/*"
          "https://*.fanboy.co.nz/*"
          "https://filterlists.com/*"
          "https://forums.lanik.us/*"
          "https://github.com/*"
          "https://*.github.io/*"
          "https://github.com/uBlockOrigin/*"
          "https://ublockorigin.github.io/*"
          "https://*.reddit.com/r/uBlockOrigin/*"
        ];
        platforms = platforms.all;
      };
    };
    "yomitan" = buildFirefoxXpiAddon {
      pname = "yomitan";
      version = "25.8.27.0";
      addonId = "{6b733b82-9261-47ee-a595-2dda294a4d08}";
      url = "https://addons.mozilla.org/firefox/downloads/file/4569735/yomitan-25.8.27.0.xpi";
      sha256 = "4b0d5b71c7bf193917709cd3ada4950b9a3ae6daf13ab7b6dad366d596411cf5";
      meta = with lib;
      {
        homepage = "https://github.com/themoeway/yomitan";
        description = "Powerful and versatile pop-up dictionary for language learning used by 100,000+ language learners.";
        license = licenses.gpl3;
        mozPermissions = [
          "storage"
          "clipboardWrite"
          "unlimitedStorage"
          "declarativeNetRequest"
          "scripting"
          "contextMenus"
          "http://*/*"
          "https://*/*"
          "file://*/*"
        ];
        platforms = platforms.all;
      };
    };
  }