{
  nixpkgs ? <nixpkgs>,
  system ? builtins.currentSystem,
}: let
  pkgs = import nixpkgs {
    inherit system;
    config.allowUnfree = true;
  };
  lib = pkgs.lib;
  categories = [
    "firefox-addons"
  ];
  umport = (import ./lib/umport.nix {}).umport;
in
  builtins.mapAttrs (
    name: type: let
      package = pkgs.callPackage ./pkgs/${name} {};
    in
      if builtins.elem name categories
      then pkgs.recurseIntoAttrs package
      else package
  ) (builtins.readDir ./pkgs)
  // {
    lib = with lib;
      zipAttrsWith (
        name: value:
          builtins.elemAt value 0
      ) (
        builtins.map (
          path: import path pkgs
        ) (umport {path = ./lib;})
      );
  }
