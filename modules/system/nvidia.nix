{ self, inputs, ... }: {

  flake.nixosModules.nvidia = { config, pkgs, lib, ...}: {

    # 1. EARLY LOADING: Force Nvidia drivers to load before the login screen starts.
    # This fixes the SDDM resolution and secondary monitor bug.
    boot.initrd.kernelModules = [ "nvidia" "nvidia_modeset" "nvidia_uvm" "nvidia_drm" ];

    hardware.graphics = {
      enable = true;
      enable32Bit = true;
    };

    services.xserver.videoDrivers = [ "nvidia" ];

    hardware.nvidia = {
      modesetting.enable = true;
      powerManagement.enable = true;
      powerManagement.finegrained = false;

      # 2. OPEN MODULES: Required for Wayland on modern RTX cards.
      # This fixes the perpetual black screen when logging into Niri.
      open = true;

      nvidiaSettings = true;
      package = config.boot.kernelPackages.nvidiaPackages.latest;
    };

    # 3. WAYLAND VARIABLES: Ensures apps know you are using Nvidia + Wayland
    environment.sessionVariables = {
      NIXOS_OZONE_WL = "1";
    };

    boot.kernelParams = [
      "nvidia.NVreg_PreserveVideoMemoryAllocations=1"
      "nvidia.NVreg_TemporaryFilePath=/var/tmp"
    ];
  };
}
