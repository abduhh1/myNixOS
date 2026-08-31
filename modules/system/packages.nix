{ self, inputs, ... }: {
  flake.nixosModules.packages = { config, pkgs, ... }: {

    imports = [
      inputs.serpantinum.nixosModules.default
    ];

    # 2. Enable the system-level prerequisites
    programs.serpantinum.enable = true;

    environment.systemPackages = with pkgs; [
      firefox
      nautilus
      zip
      unzip
      kdePackages.ark
      #waybar
      fuzzel
      discord
      xwayland-satellite
      btop
      vesktop
      zed-editor
      nil
      nixd
      bottles
      ryubing
      wl-clipboard
      wlogout
      pavucontrol
      #mpvpaper
      swaylock
      swayidle
      adwaita-icon-theme
      brave-origin
      r2modman
      pamixer
      git
      wget
      piper
      pinta
      libreoffice
      #nwg-panel
      #inputs.murale-pr.legacyPackages.${pkgs.system}.murale
      pulseaudio
      imagemagick
      jq
      curl
      qtg.qtsvg
    ];

    services.ratbagd.enable = true;
  };
}
