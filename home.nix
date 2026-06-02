{
  config,
  lib,
  ...
}:
{
  imports = [
    ./modules/packages.nix
    ./modules/programs.nix
    ./modules/nvf.nix
    # ./modules/git.nix
  ];

  home = {
    username = "o93";
    homeDirectory = "/home/o93";
    stateVersion = "25.11";
    sessionVariables = {
      EDITOR = "nvim";
      XDG_CONFIG_HOME = "${config.home.homeDirectory}/.config";
      COLORTERM = "truecolor";
      PASTEL_COLOR_MODE = "24bit";
    };
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
