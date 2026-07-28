{ inputs, ... }:
{
  imports = [ inputs.make-shell.flakeModules.default ];

  perSystem =
    {
      pkgs,
      ...
    }:
    {
      make-shells.default = {
        packages = with pkgs; [
          gram
          kitty
          presenterm
          mermaid-cli
          just
          typst
        ];
      };
    };
}
