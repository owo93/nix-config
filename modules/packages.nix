{ pkgs, ... }:
{

  home.packages = with pkgs; [
    nixfmt
    nixd

    lsd
    lazygit
    yazi
    ripgrep
    glow

    watchexec
    cargo-binstall
    cargo-watch
  ];
}
