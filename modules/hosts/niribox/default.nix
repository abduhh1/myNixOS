{ self, inputs, ... }: {

  flake.nixosConfigurations.niribox = inputs.nixpkgs.lib.nixosSystem {
    modules = [
      self.nixosModules.niriboxConfiguration
      inputs.nix-flatpak.nixosModules.nix-flatpak
      inputs.silentSDDM.nixosModules.default
      inputs.home-manager.nixosModules.home-manager
    ];
  };

}
