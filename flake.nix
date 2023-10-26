{
  description = "yunfachi's Nix Packages collection";
  inputs.nixpkgs.url = "github:NixOS/nixpkgs/nixpkgs-unstable";
  outputs = {
    self,
    nixpkgs,
  }: let
    systems = [
      "x86_64-linux"
      "i686-linux"
      "x86_64-darwin"
      "aarch64-linux"
      "armv6l-linux"
      "armv7l-linux"
    ];
    eachSystem = nixpkgs.lib.genAttrs (import systems);
    pkgs = eachSystem (system: (nixpkgs.legacyPackages.${system}));
    packagesFn = pkgs:
      import ./default.nix {
        inherit pkgs;
      };
  in {
    packages = eachSystem (system: packagesFn pkgs.${system});
    overlays.default = final: prev: packagesFn prev;
  };
}
