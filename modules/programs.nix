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
}
