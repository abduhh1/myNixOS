{ self, inputs, ... }: {
  flake.nixosModules.macpwr = { config, pkgs, ... }: {

    imports = [
      # Import the baseline Apple T2 hardware quirks here
      inputs.nixos-hardware.nixosModules.apple-t2
    ];

    # Ensure power management hooks are enabled
    powerManagement.enable = true;

    # This replaces the sleep-preparation part of Ben Staker's script
    powerManagement.powerDownCommands = ''
      # Strip the Wi-Fi modules before the kernel suspends
      ${pkgs.kmod}/bin/modprobe -r brcmfmac_wcc
      ${pkgs.kmod}/bin/modprobe -r brcmfmac
    '';

    # This replaces the wake part of Ben Staker's script AND our Bluetooth fix
    powerManagement.resumeCommands = ''
      # 1. Bring Wi-Fi back online cleanly
      ${pkgs.kmod}/bin/modprobe brcmfmac
      ${pkgs.kmod}/bin/modprobe brcmfmac_wcc

      # 2. Force reset the Bluetooth PCI device (Using your specific PCI address)
      echo "0000:73:00.1" > /sys/bus/pci/drivers/hci_bcm4377/unbind
      sleep 2
      echo "0000:73:00.1" > /sys/bus/pci/drivers/hci_bcm4377/bind
      sleep 2
      ${pkgs.systemd}/bin/systemctl restart bluetooth
    '';
  };
}
