{
  config,
  ...
}:
{
  imports = [
    ../../modules/packages.nix
    ../../modules/programs
  ];

  # Switch home generations with NH
  programs.nh = {
    enable = true;
    clean.enable = true;
    clean.extraArgs = "--keep-since 4d --keep 3";
    flake = "${config.home.homeDirectory}/.config/home-manager";
  };

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

  nixpkgs.config.allowUnfree = true;

  programs.home-manager.enable = true;
}
