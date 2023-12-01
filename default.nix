{
  nixpkgs,
  system,
}: let
  pkgs = import nixpkgs {
    inherit system;
    config.allowUnfree = true;
  };
in {
  yunfaavatar = pkgs.callPackage ./pkgs/yunfaavatar {};
  shikimori = pkgs.callPackage ./pkgs/shikimori {};
}
