{
  config,
  lib,
  pkgs,
  ...
}:
{
  imports = [
    ./modules/packages.nix
    ./modules/programs.nix
    ./modules/nvf.nix
    # ./modules/git.nix
  ];

  home.username = "o93";
  home.homeDirectory = "/home/o93";
  home.stateVersion = "25.11";

  home.sessionVariables = {
    EDITOR = "nvim";
    XDG_CONFIG_HOME = "${config.home.homeDirectory}/.config";
    COLORTERM = "truecolor";
    PASTEL_COLOR_MODE = "24bit";
  };

  nixpkgs.config = {
    allowUnfreePredicate =
      pkg:
      builtins.elem (lib.getName pkg) [
        # add unfree pkgs here
      ];
  };

  programs.home-manager.enable = true;
}
