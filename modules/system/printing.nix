{ self, inputs, ... }: {
  flake.nixosModules.printing = { config, pkgs, lib, ... }: {
    # Enable CUPS to print documents
    services.printing = {
        enable = true;
        drivers = [  # Keeps your HP drivers
          pkgs.canon-cups-ufr2   # <--- Add this for Canon imageCLASS support
        ];
      };

      services.avahi = {
        enable = true;
        nssmdns4 = true;
        openFirewall = true;
      };

      environment.systemPackages = with pkgs; [
        system-config-printer
      ];
  };
}
