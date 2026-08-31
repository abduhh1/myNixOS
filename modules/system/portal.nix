{ self, inputs, ... }: {

  flake.nixosModules.portal = { pkgs, lib, ...}: {

    xdg.portal = {
      enable = true;

      config.common.default = "*";
      extraPortals = with pkgs; [
        xdg-desktop-portal-gtk
      ];
    };

  };

}
