{
  outputs =
    inputs:
    (inputs.nixpkgs.lib.evalModules {
      modules = [ (inputs.import-tree ./modules) ];
      specialArgs = { inherit inputs; };
    }).config.flake;

  inputs = {
    nixpkgs.url = "https://channels.nixos.org/nixpkgs-unstable/nixexprs.tar.xz";
    import-tree.url = "github:vic/import-tree";
    den.url = "github:denful/den";
    home-manager.url = "github:nix-community/home-manager";
    # Using a fork until https://github.com/denful/den-diagram/pull/1 is merged
    den-diagram.url = "github:drupol/den-diagram/push-mrpwkmkttunm";
  };
}
