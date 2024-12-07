{
    programs.zsh = {
        enable = true;
        enableCompletion = true;
        syntaxHighlighting.enable = true;

        shellAliases = {
            ll = "ls -l";
            update = "home-manager switch";
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
