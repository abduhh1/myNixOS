{ self, inputs, ... }: {

  flake.nixosModules.kernel = { config, pkgs, ... }: {
    
    # 1. Register the cache explicitly
    nix.settings.substituters = [ 
      "https://attic.xuyh0120.win/lantian" 
    ];
    
    nix.settings.trusted-public-keys = [ 
      "lantian:EeAUQ+W+6r7EtwnmYjeVwx5kOGEBpjlBfPlzGlTNvHc=" 
    ];

    nixpkgs.overlays = [ 
      inputs.nix-cachyos-kernel.overlays.pinned 
    ];

    # 2. COMMENT THIS OUT FOR NOW so it doesn't try to build yet:
    boot.kernelPackages = pkgs.cachyosKernels.linuxPackages-cachyos-latest;

  };
}
