{ self, inputs, ... }: {
  flake.nixosModules.flatpak = { config, pkgs, ... }: {
    services.flatpak = {
      enable = true;
      remotes = [{
        name = "flathub";
        location = "https://dl.flathub.org/repo/flathub.flatpakrepo";
      }];
      packages = [
        "org.vinegarhq.Sober"
        "dev.bambosh.UnofficialHomestuckCollection"
      ];
    };
  };
}
