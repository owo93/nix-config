{ ... }:
{
  programs.direnv = {
    enable = true;
    enableZshIntegration = true;
    silent = true;
    nix-direnv.enable = true;
  };

  programs.bat = {
    enable = true;
    config = {
      italic-text = "always";
      map-syntax = [
        "*.ino:C++"
        ".ignore:Git Ignore"
      ];
      paging = "auto";
      style = "changes";
      theme = "TwoDark";
    };
  };

  programs.fzf = {
    enable = true;
    enableZshIntegration = true;
    defaultOptions = [
      "--preview '[[ -f {} ]] && bat --color=always --paging=never -p {}'"
      "--preview-window right:60%"
    ];
  };

  programs.nh = {
    enable = true;
    clean.enable = true;
    clean.extraArgs = "--keep-since 4d --keep 3";
    flake = "/home/o93/~/.config/home-manager";
  };
}
