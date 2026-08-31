{ self, inputs, ... }: {
  flake.nixosModules.features = { config, pkgs, ... }: {

    imports = [
      self.nixosModules.sddm
      self.nixosModules.steam
      self.nixosModules.flatpak
      ];
    };

}
