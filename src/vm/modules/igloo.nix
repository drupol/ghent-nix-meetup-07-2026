{
  inputs,
  ...
}:
{
  # Load the Den framework module
  imports = [ inputs.den.flakeModule ];
  # Enable home manager support for users
  den.schema.user.classes = [ "homeManager" ];

  # Bind the users aspects to the host aspect.
  den.hosts.x86_64-linux.igloo.users.alice = { };
  den.hosts.x86_64-linux.igloo.users.bob = { };

  # The host aspect
  den.aspects.igloo = {
    nixos = {
      system.stateVersion = "26.11";
    };

    # Propagated to all the host users
    provides.to-users = {
      includes = [
        {
          user.initialPassword = "id";
          homeManager.home.stateVersion = "26.11";
        }
      ];
    };
  };
}
