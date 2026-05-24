{ config, pkgs, ... }:
{
  imports = [
    ./modules/packages.nix
    ./modules/programs.nix
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

  programs.home-manager.enable = true;
}
