{ self, inputs, ... }: {
  flake.nixosModules.boot = { config, pkgs, ... }: {
    boot.loader.systemd-boot.enable = false;
    boot.loader.limine.enable = true;
    boot.loader.efi.canTouchEfiVariables = true;
    boot.plymouth.enable = true;
    boot.consoleLogLevel = 3;
    boot.initrd.verbose = false;
    boot.kernelParams = [
      "quiet"
      "splash"
      "rd.systemd.show_status=false"
      "vt.handoff=7"
    ]
    nix.settings.experimental-features = [ "nix-command" "flakes" ];
    nixpkgs.config.allowUnfree = true;
    system.stateVersion = "26.05";
  };
}
