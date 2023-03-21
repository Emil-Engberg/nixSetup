{ config, pkgs, ... }:

{
    hardware = {

        opengl = {
            driSupport = true;
            driSupport32Bit = true;

            extraPackages = with pkgs; [
                rocm-opencl-icd 
                rocm-opencl-runtime
                amdvlk
                driversi686Linux.amdvlk
                mesa.drivers
            ];
        };
    };
}