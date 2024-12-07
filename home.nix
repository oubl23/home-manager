{ config, pkgs, ... }:

{

  home.username = "dabao";
  home.homeDirectory = "/home/dabao";

  home.stateVersion = "24.11";

  imports = [
      ./apps/tmux.nix
      ./apps/git.nix
      ./apps/zsh.nix
  ];

  home.packages = with pkgs;[
    lazygit
    htop
    subversion
    pgcli
    tmuxinator
  ];

  home.file = {
    ".ssh/config".source = dotfiles/ssh_config;
    ".config/alacritty/alacritty.toml".text = import config/alacritty.nix {zsh = pkgs.zsh;};
  };


  home.sessionVariables = {
    # EDITOR = "emacs";
  };

  programs.home-manager.enable = true;

}
