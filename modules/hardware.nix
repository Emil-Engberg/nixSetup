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

            extraPackages32 = with pkgs; [
                driversi686Linux.amdvlk
            ];
        };
    };

    environment.variables.AMD_VULKAN_ICD = "RADV";
}