{
  den,
  ...
}:
{
  den.aspects.git = {
    # System-level configuration (NixOS)
    nixos =
      { pkgs, ... }:
      {
        environment.systemPackages = [ pkgs.cowsay ];
      };

    # User-level configuration (Home Manager)
    homeManager =
      { user, ... }:
      {
        programs.git = {
          enable = true;
          settings = {
            user = {
              inherit (den.aspects.${user.name}.meta) email;
            };
          };
        };
      };
  };
}
