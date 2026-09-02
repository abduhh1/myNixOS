{ self, inputs, ... }: {
  flake.nixosModules.system = { config, pkgs, ... }: {

    imports = [
      self.nixosModules.storage
      self.nixosModules.audio
      self.nixosModules.portal
      # self.nixosModules.nvidia
      self.nixosModules.intel
      # self.nixosModules.kernel
      self.nixosModules.boot
      self.nixosModules.networking
      self.nixosModules.user
      self.nixosModules.packages
      self.nixosModules.security
      self.nixosModules.printing
      self.nixosModules.macpwr
      ];
    };

}
