{ config, pkgs, ... }:
{
  imports = [
    ./modules/packages.nix
    ./modules/programs.nix
  ];

  home.username = "o93";
  home.homeDirectory = "/home/o93";
  home.stateVersion = "25.11"; # Please read the comment before changing.

  home.sessionVariables = {
    EDITOR = "nvim";
    XDG_CONFIG_HOME = "${config.home.homeDirectory}/.config";
    COLORTERM = "truecolor";
    PASTEL_COLOR_MODE = "24bit";
  };

  # Let Home Manager install and manage itself.
  programs.home-manager.enable = true;
}
