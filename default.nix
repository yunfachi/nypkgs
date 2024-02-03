{
  nixpkgs ? import <nixpkgs> {},
  system ? builtins.currentSystem,
}: let
  pkgs = import nixpkgs {
    inherit system;
    config.allowUnfree = true;
  };
  categories = [
    "firefox-addons"
  ];
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
    lib = builtins.listToAttrs (builtins.map (name: {
      name = builtins.replaceStrings [".nix"] [""] name;
      value = import ./lib/${name};
    }) (builtins.attrNames (builtins.readDir ./lib)));
  }
