{pkgs ? import <nixpkgs> {}}: {
  yunfaavatar = pkgs.callPackage ./pkgs/yunfaavatar {};
  shikimori = pkgs.callPackage ./pkgs/shikimori {};
}
