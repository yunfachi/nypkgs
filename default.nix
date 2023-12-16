{
  nixpkgs,
  system,
}: let
  pkgs = import nixpkgs {
    inherit system;
    config.allowUnfree = true;
  };
in {
  canary = pkgs.callPackage ./pkgs/canary {};
  yunfaavatar = pkgs.callPackage ./pkgs/yunfaavatar {};
  shikimori = pkgs.callPackage ./pkgs/shikimori {};

  umport = import ./lib/umport.nix;
}
