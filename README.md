# nypkgs
yunfachi's Nix Packages collection

# Installation
### With flakes
```nix
# flake.nix
{
  inputs.nypkgs = {
    url = "github:yunfachi/nypkgs";
    inputs.nixpkgs.follows = "nixpkgs";
  };
}
```

# Packages
- [umport](./lib/umport.nix) (lib) - automatic imports
- [shikimori](./pkgs/shikimori/default.nix) - application for the website shikimori.one
- [yunfaavatar](./pkgs/yunfaavatar/default.nix) - automated and centralized avatar updates 
