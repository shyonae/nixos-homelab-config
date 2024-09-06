{ lib, pkgs, pkgs-stable, userSettings, ... }:
{
  programs.home-manager.enable = true;
  # style
  stylixPkg.enable = true;
  # others
  git.enable = true;
  htop.enable = true;
  kitty.enable = true;
  tmux.enable = true;
  vim.enable = true;
  zsh.enable = true;
}	
