{ self, inputs, ... }: {

  # Expose this as a reusable Home Manager module on the flake
  flake.homeModules.theming = { pkgs, config, lib, ... }: {
    options.mySystem.desktop.theming.enable = lib.mkEnableOption "GNOME/GTK Dark Theming";

    config = lib.mkIf config.mySystem.desktop.theming.enable {

      # Tells the XDG Desktop Portal (and therefore Vesktop/Electron) to prefer dark mode
      dconf.settings = {
        "org/gnome/desktop/interface" = {
          color-scheme = "prefer-dark";
        };
      };

      # Themes your standard GTK dialogs, right-click menus, and file pickers
      gtk = {
        enable = true;
        theme = {
          name = "Adwaita-dark";
          package = pkgs.gnome-themes-extra;
        };
      };

    };
  };

}
