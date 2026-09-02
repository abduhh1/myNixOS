{ self, inputs, ... }: {
  flake.nixosModules.intel = { config, pkgs, ... }: {

    # 1. Enable the graphics stack
    hardware.graphics = {
      enable = true;

      # 2. Add the specific Intel drivers for hardware acceleration
      extraPackages = with pkgs; [
        intel-media-driver   # Standard VA-API driver for Broadwell (5th-gen) and newer
        intel-vaapi-driver   # Legacy fallback (sometimes helps with older electron apps)
        libvdpau-va-gl       # VDPAU backend for older apps that don't support VA-API
      ];
    };

    # 3. Tell your environment to prefer the modern Intel driver
    environment.sessionVariables = {
      LIBVA_DRIVER_NAME = "iHD";
    };

  };
}
