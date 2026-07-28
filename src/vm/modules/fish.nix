{
  den.aspects.fish = {
    homeManager = {
      home.shell.enableFishIntegration = true;
    };

    user =
      { pkgs, ... }:
      {
        shell = pkgs.fish;
      };

    nixos = {
      programs.fish.enable = true;
    };
  };
}
