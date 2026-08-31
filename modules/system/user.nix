{ self, inputs, ... }: {
  flake.nixosModules.user = { config, pkgs, ... }: {

    # Update this block to include the init script
    programs.fish = {
      enable = true;
      interactiveShellInit = ''
        fastfetch
      '';
    };

    users.users."abd" = {
      isNormalUser = true;
      description = "abd";
      extraGroups = [ "networkmanager" "wheel" "input" ];

      # Add fastfetch to your user's packages here
      packages = with pkgs; [
        fastfetch
      ];

      fonts = {
        enableDefaultPackages = true;

        # 1. Install the font packages
        packages = with pkgs; [
          inter
          noto-fonts
          noto-fonts-cjk-sans
          noto-fonts-emoji
          (nerdfonts.override { fonts = [ "JetBrainsMono" ]; })
        ];

        # 2. Set them as your system-wide defaults
        fontconfig = {
          defaultFonts = {
            sansSerif = [ "Inter" "Noto Sans" ];
            serif     = [ "Noto Serif" ];
            monospace = [ "JetBrainsMono Nerd Font" ];
            emoji     = [ "Noto Color Emoji" ];
          };
        };
      };

      shell = pkgs.fish;
    };
  };
}
