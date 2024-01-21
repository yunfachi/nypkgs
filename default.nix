{
  nixpkgs ? <nixpkgs>,
  system ? builtins.currentSystem,
}: let
  pkgs = import nixpkgs {
    inherit system;
    config.allowUnfree = true;
  };
in
  builtins.mapAttrs (
    name: type:
      pkgs.callPackage ./pkgs/${name} {}
  ) (builtins.readDir ./pkgs)
  // {
    lib = builtins.listToAttrs (builtins.map (name: {
      name = builtins.replaceStrings [".nix"] [""] name;
      value = import ./lib/${name};
    }) (builtins.attrNames (builtins.readDir ./lib)));
  }
