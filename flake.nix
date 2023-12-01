{
  description = "yunfachi's Nix Packages collection";
  inputs.nixpkgs.url = "github:NixOS/nixpkgs/master";
  outputs = {
    self,
    nixpkgs,
  }: let
    # https://github.com/NixOS/nixpkgs/blob/master/lib/systems/flake-systems.nix
    systems = [
      "x86_64-linux"
      "aarch64-linux"
      "x86_64-darwin"
      "armv6l-linux"
      "armv7l-linux"
      "i686-linux"
      "mipsel-linux"
      "aarch64-darwin"
      "armv5tel-linux"
      "powerpc64le-linux"
      "riscv64-linux"
    ];
    forAllSystems = nixpkgs.lib.genAttrs systems;
  in {
    legacyPackages = forAllSystems (system:
      import ./. {
        inherit nixpkgs system;
      });
  };
}
