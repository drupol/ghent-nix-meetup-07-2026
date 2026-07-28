{
  den,
  ...
}:
{
  # The user aspect
  den.aspects.alice = {
    includes = [
      den.batteries.host-aspects
      den.batteries.define-user
      den.aspects.git
    ];

    meta = {
      email = "alice@example.com";
    };
  };
}
