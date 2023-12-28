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
  shikimori = pkgs.callPackage ./pkgs/shikimori {};
  yunfaavatar = pkgs.callPackage ./pkgs/yunfaavatar {};

  sops-decrypt = args:
    import ./lib/sops-decrypt.nix {
      inherit (pkgs) sops age;
      inherit (pkgs.stdenvNoCC) mkDerivation;
      inherit (args) path publicAge privateAgeFile;
    };
  umport = import ./lib/umport.nix;
}
