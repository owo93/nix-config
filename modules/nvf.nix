{
  pkgs,
  inputs,
  ...
}:
{
  home.packages = [
    inputs.nvf.packages.${pkgs.system}.default
  ];
}
