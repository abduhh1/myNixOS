{ self, inputs, ... }: {
  flake.nixosModules.features = { config, pkgs, ... }: {

    imports = [
      self.nixosModules.greetd
      self.nixosModules.steam
      self.nixosModules.flatpak
      ];
    };

}
