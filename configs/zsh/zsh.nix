{pkgs, ...}:

{
    programs = {
        zsh = {
            enable = true;
            enableAutosuggestions = true; 
            enableSyntaxHighlighting = true;
            enableCompletion = true;

            oh-my-zsh =  {
                enable = true;

                plugins = [
                    "git"
                ];

                theme = "robbyrussell";
            };
        };
    };
}