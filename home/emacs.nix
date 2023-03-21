{ pkgs, ... }:

{
    programs = {
        doom-emacs = {
            enable = true;
            doomPrivateDir = ../configs/doom;
        };
    };

    services = {
        emacs = {
            enable = true;
        };
    };
}