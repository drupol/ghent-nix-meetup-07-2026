{
  den,
  ...
}:
{
  # The user aspect
  den.aspects.bob = {
    includes = [
      den.batteries.host-aspects
      den.batteries.define-user
      den.aspects.jujutsu
      den.aspects.fish
    ];

    meta = {
      email = "bob@example.com";
    };
  };
}
