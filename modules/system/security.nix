{ self, inputs, ... }: {
  flake.nixosModules.security = { config, pkgs, ... }: {
    security.polkit.enable = true;
    security.pam.services.swaylock = {};
  };
}
