{ pkgs, ... }:

{
    programs = {
        git = {
            enable = true;
            userName = "Emil Engberg";
            userEmail = "emil.engberg@outlook.com";

            extraConfig = {
                credential.helper = "${
                    pkgs.git.override { withLibsecret = true; }
                }/bin/git-credential-libsecret";
            };
        };
    };
}
