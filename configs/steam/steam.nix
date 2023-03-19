{ pkgs, inputs, libs, ...  }:

{
    programs = {
        steam = {
            enable = true;
        };
    };

    environment.systemPackages = with pkgs; [
        steam-run
    ];
}
