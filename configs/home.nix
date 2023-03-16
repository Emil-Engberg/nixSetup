{ inputs, ... }:

{
    imports = [
        sway/sway.nix
        zsh/zsh.nix
        git/git.nix
        vim/vim.nix
        hypr/config.nix
    ];
}