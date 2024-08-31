{pkgs, ...}: {
  vscodeBase24Theme = {
    scheme-name ? "theme",
    variant ? "dark",
    uiTheme ? "vs-dark",
    base00,
    base01,
    base02,
    base03,
    base04,
    base05,
    base06,
    base07,
    base08,
    base09,
    base0A,
    base0B,
    base0C,
    base0D,
    base0E,
    base0F,
    base10 ? base00,
    base11 ? base00,
    base12 ? base08,
    base13 ? base0A,
    base14 ? base0B,
    base15 ? base0C,
    base16 ? base0D,
    base17 ? base0E,
    ...
  } @ args:
    {
      vscodeExtUniqueId = "nypkgs.base24-theme";
      vscodeExtPublisher = "yunfachi";
      version = "1.0.0";
    }
    // pkgs.symlinkJoin {
      name = "test";
      paths = [
        (pkgs.writeTextDir "share/vscode/extensions/nypkgs.base24-theme/theme.json" (import ./template.nix args))
        (pkgs.writeTextDir "share/vscode/extensions/nypkgs.base24-theme/package.json" ''
          {
            "name": "nypkgs-base24",
            "version": "1.0.0",
            "displayName": "Nypkgs Base24 Theme",
            "description": "Nypkgs Base24 Theme",
            "publisher": "yunfachi",
            "engines": {
              "vscode": "^1.85.0"
            },
            "categories": [
              "Themes"
            ],
            "contributes": {
              "themes": [
                {
                  "label": "nypkgs-base24",
                  "uiTheme": "${uiTheme}",
                  "path": "./theme.json"
                }
              ]
            }
          }
        '')
      ];
    };
}
