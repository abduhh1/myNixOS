{ self, inputs, ... }: {

  flake.nixosModules.niriboxConfiguration = { config, pkgs, lib, ... }: {
    imports = [
      self.nixosModules.niriboxHardware
      self.nixosModules.niri-cfg
      self.nixosModules.system

      self.nixosModules.features

      self.nixosModules.home
    ];
  };
}
