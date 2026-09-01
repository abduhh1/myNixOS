{ self, inputs, lib, pkgs, ... }: {

  flake.nixosModules.greetd = {

    # Ensure SDDM is strictly disabled to prevent conflicts
    services.displayManager.sddm.enable = false;

    services.greetd = {
      enable = true;
      settings = {
        default_session = {
          # Use Sway as the lightweight Wayland compositor backend for ReGreet
          command = "${pkgs.sway}/bin/sway --config ${pkgs.writeText "sway-config" ''
            output * bg "${../../wallpapers/forest.jpg}" fill
            exec "${pkgs.regreet}/bin/regreet; swaymsg exit"
          ''}";
          user = "greeter";
        };
      };
    };

    services.displayManager.regreet = {
      enable = true;
      settings = {
        background = {
          # Use your forest wallpaper path
          path = "${../../wallpapers/forest.jpg}";
          fit = "Cover";
        };
        GTK = {
          theme_name = lib.mkForce "Adwaita-dark";
        };
      };
    };

  };

}
