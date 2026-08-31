{ self, inputs, ... }: {
  flake.nixosModules.home = { config, pkgs, ... }: {

    home-manager.useGlobalPkgs = true;
    home-manager.useUserPackages = true;


    home-manager.users."abd" = {
      home.stateVersion = "26.05";

      mySystem.desktop.theming.enable = true;
      # Reference the flake variable instead of a relative file path
      imports = [
        #self.homeModules.mako
        #self.homeModules.swayutil
        #self.homeModules.waybar
        self.homeModules.cursor
        #self.homeModules.powerMenuXml
        self.homeModules.theming
        #self.homeModules.nightMode
        #self.homeModules.nwgPanel
        self.homeModules.serpantinum
        self.homeModules.kitty
      ];
    };

  };
}
