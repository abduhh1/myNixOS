{ self, inputs, ... }: {

  flake.nixosModules.storage = { pkgs, lib, ...}: {

    # fileSystems."/mnt/D" = {
    #   device = "/dev/disk/by-uuid/161b90a2-c54b-4583-9292-11ec8cad68fa";
    #   fsType = "btrfs";
    #   options = [ "nofail" ];
    # };

    # fileSystems."/mnt/E" = {
    #   device = "/dev/disk/by-uuid/cd1a54aa-e5a6-41da-8663-b15c14351324";
    #   fsType = "btrfs";
    #   options = [ "nofail" ];
    # };

  };

}
