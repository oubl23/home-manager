{
    programs.zsh = {
        enable = true;
        enableCompletion = true;
        syntaxHighlighting.enable = true;
        initExtra = ''
            set -o emacs
            . /home/dabao/.nix-profile/etc/profile.d/nix.sh
            [[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
            [[ ! -f ~/.custom.zsh ]] || source ~/.custom.zsh
        '';
        shellAliases = {
            ll = "ls -l";
            update = "home-manager switch --impure";
        };
        history = {
            size = 100000;
        };
        zplug = {
            enable = true;
            plugins = [
                { name = "zsh-users/zsh-autosuggestions"; }
                { name = "romkatv/powerlevel10k"; tags = [ as:theme depth:1 ]; }
            ];
        };

    };
}
