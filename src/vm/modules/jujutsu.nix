{
  den,
  ...
}:
{
  den.aspects.jujutsu = {
    # System-level configuration (NixOS)
    nixos =
      { pkgs, ... }:
      {
        environment.systemPackages = [ pkgs.jq ];
      };

    # User-level configuration (Home Manager)
    homeManager =
      { user, ... }:
      {
        programs.jujutsu = {
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
