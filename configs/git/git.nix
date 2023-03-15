{ pkgs, ... }:

{
    programs = {
        git = {
            enable = true;
            userName = "Sebastian Lindholm Gustafsson";
            userEmail = "sebastianlindholm@outlook.com";

            extraConfig = {
                credential.helper = "${
                    pkgs.git.override { withLibsecret = true; }
                }/bin/git-credential-libsecret";
            };
        };
    };
}