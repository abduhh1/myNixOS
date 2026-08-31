{ self, inputs, ... }: {
  flake.homeModules.serpantinum = { pkgs, system, ... }: {
    imports = [
      inputs.serpantinum.homeManagerModules.default
    ];

    programs.serpantinum = {
      enable = true;
      systemd.enable = true;

      settings = {
        wallpaperDir = "/home/abd/Pictures/Wallpapers";

        general = {
          avatarPath = "";
          language = "en";
          muteSfx = false;
          weatherInterval = 30;
          weatherUnit = "metric";
          location = {
            ip = "2600:1700:3f98:90:3616:8f29:e2f6:167d";
            latitude = 33.956369;
            longitude = -83.988015;
            city = "Lawrenceville";
            region = "Georgia";
            region_code = "GA";
            country_name = "United States";
            country_code = "US";
            postal = "30046";
            timezone = "America/New_York";
            utc_offset = "-0400";
            currency = "USD";
            languages = "en-US,es-US,haw,fr";
            asn = "AS7018";
            org = "AT&T Enterprises, LLC";
            source = "ipapi.co";
            updated_at = 1788110480;
          };
        };

        bar = {
          autohide = false;
          autohideTimeout = 1000;
          groupColors = {
            g_kb = "#89dceb";
          };
          modules = {
            left = [ "workspaces" "media" "vis" ];
            center = [ "timedate" "sysmon" ];
            right = [ "tray" [ "kb" "wifi" "bt" "vol" "bat" ] ];
          };
          opacity = 100;
          position = "top";
          style = "fill";
          time = {
            format = "hh:mm ap";
          };
          width = 40;
          workspaceCount = 10;
        };

        display = {
          monitors = {
            "eDP-1" = {
              enabled = true;
              scale = 1;
              auto = true;
            };
            "DP-2" = {
              enabled = false;
              scale = 1;
              auto = true;
            };
            "DP-3" = {
              enabled = false;
              scale = 1;
              auto = true;
            };
          };
        };

        idle = {
          enabled = true;
          actions = {
            dim = {
              command = "";
              enabled = true;
              id = "dim";
              isCustom = false;
              mprisInhibit = false;
              respectInhibitors = true;
              resumeCommand = "";
              timeout = 150;
            };
            dpms = {
              command = "";
              enabled = true;
              id = "dpms";
              isCustom = false;
              mprisInhibit = false;
              respectInhibitors = true;
              resumeCommand = "";
              timeout = 450;
            };
            lock = {
              command = "";
              enabled = true;
              id = "lock";
              isCustom = false;
              mprisInhibit = false;
              respectInhibitors = true;
              resumeCommand = "";
              timeout = 300;
            };
            suspend = {
              command = "";
              enabled = true;
              id = "suspend";
              isCustom = false;
              mprisInhibit = false;
              respectInhibitors = true;
              resumeCommand = "";
              timeout = 600;
            };
          };
        };

        notifications = {
          dnd = false;
          position = "top right";
          sound = true;
          soundFile = "/nix/store/9j44cbal5p4mqdf2y4iv9ygvb25vy2zd-serpantinum-2.0.0/share/serpantinum/assets/sounds/notifications/Botanica.wav";
        };

        syspanel = {
          clipExpandProgress = 0;
          clipExpanded = false;
          clipState = 1;
        };

        theme = {
          activePreset = "Matugen";
          borderRadius = 12;
          fontFamily = "JetBrainsMono Nerd Font";
          matugen = true;
          colors = {
            base = "#000000";
            blue = "#ffffff";
            crust = "#000000";
            green = "#ffffff";
            mantle = "#050505";
            maroon = "#808080";
            mauve = "#d0d0d0";
            overlay0 = "#5a5a5a";
            overlay1 = "#7a7a7a";
            overlay2 = "#9a9a9a";
            peach = "#cccccc";
            pink = "#e0e0e0";
            red = "#a0a0a0";
            sapphire = "#e0e0e0";
            subtext0 = "#a0a0a0";
            subtext1 = "#c0c0c0";
            surface0 = "#1a1a1a";
            surface1 = "#2a2a2a";
            surface2 = "#3a3a3a";
            teal = "#c0c0c0";
            text = "#ffffff";
            yellow = "#ffffff";
          };
        };
      };
    };
  };
}
