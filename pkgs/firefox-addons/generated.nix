{ buildMozillaXpiAddon, fetchurl, lib, stdenv }:
  {
    "bitwarden-password-manager" = buildMozillaXpiAddon {
      pname = "bitwarden-password-manager";
      version = "2026.3.0";
      addonId = "{446900e4-71c2-419f-a6a7-df9c091e268b}";
      url = "https://addons.mozilla.org/firefox/downloads/file/4749958/bitwarden_password_manager-2026.3.0.xpi";
      sha256 = "2dc6d074d4dc0abd2a8966f5065a55e7252bbf5e54b23c31dbedabfac0d4dbc4";
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
    "browser-mopidy-youtube" = buildMozillaXpiAddon {
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
    "deshiro" = buildMozillaXpiAddon {
      pname = "deshiro";
      version = "0.5.7";
      addonId = "{e75d9f2d-9270-4f16-94e1-abd73c5174f8}";
      url = "https://addons.mozilla.org/firefox/downloads/file/4758806/deshiro-0.5.7.xpi";
      sha256 = "2c607ef48aaca0c16248e38b3248593b9123865cb679e47799a4e2390cb033ec";
      meta = with lib;
      {
        homepage = "https://github.com/deshiro/browser-extension";
        description = "The Deshiro browser extension for the Shikimori website";
        mozPermissions = [
          "*://*.shikimori.io/*"
          "*://*.shiki.one/*"
          "*://*.shikimori.one/*"
          "*://*.shikimori.me/*"
          "*://deshiro.ynf.sh/*"
          "*://kodikapi.com/*"
          "*://kodik-api.com/*"
          "nativeMessaging"
          "activeTab"
          "storage"
        ];
        platforms = platforms.all;
      };
    };
    "history-cleaner" = buildMozillaXpiAddon {
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
    "new-tab-homepage" = buildMozillaXpiAddon {
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
    "ublock-origin" = buildMozillaXpiAddon {
      pname = "ublock-origin";
      version = "1.70.0";
      addonId = "uBlock0@raymondhill.net";
      url = "https://addons.mozilla.org/firefox/downloads/file/4721638/ublock_origin-1.70.0.xpi";
      sha256 = "f2730d2877005763a45d765749892e936f49cae713d28f7aa6ea314454b89cf1";
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
    "yomitan" = buildMozillaXpiAddon {
      pname = "yomitan";
      version = "26.3.30.0";
      addonId = "{6b733b82-9261-47ee-a595-2dda294a4d08}";
      url = "https://addons.mozilla.org/firefox/downloads/file/4755102/yomitan-26.3.30.0.xpi";
      sha256 = "8f4b3610f683dbdb1f0ee4103c12ab0be76b7ca6aca41126971095b0450e63fc";
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