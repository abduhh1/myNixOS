{ self, inputs, ... }: {

  flake.nixosModules.sddm = { pkgs, config, lib, ... }: {

    programs.silentSDDM = {
      enable = true;
      theme = "rei";

      settings = {
        LoginScreen = {
          # Leave the background as a static image (or remove it to keep the default)
          # background = "${../../wallpapers/hornet_fallback.jpg}";

          # Add your video here, and prepend file:// so the QML player can read it!
          video = "file://${../../wallpapers/hornet.mp4}";
        };
        LockScreen = {
          video = "file://${../../wallpapers/hornet.mp4}";
        };
      };
    };

  };

}
