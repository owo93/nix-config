{ pkgs, ... }:
{
  home.packages = with pkgs; [
    nixfmt
    nixd

    lsd
    lazygit
    lazysql
    yazi
    ripgrep
    glow

    watchexec
    cargo-binstall
    clang-tools

    devenv

    ni
    nodejs
    pnpm
  ];
}
