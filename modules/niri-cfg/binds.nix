{ self, inputs, ... }: {
  flake.niriModules.binds = pkgs: lib: {
    # System
    "Mod+Shift+Slash".show-hotkey-overlay = _: {};
    "Mod+Shift+E".quit = _: {};
    "Mod+Q".close-window = _: {};
    "Mod+Tab".toggle-overview = _: {};

    # Serpantinum Shell Integrations
    "Mod+R".spawn = [ "serpantinum" "reload" ];
    "Mod+L".spawn = [ "serpantinum" "lock" ];
    "XF86PowerOff".spawn = [ "serpantinum" "lock" ];

    # Serpantinum Menu Toggles (Popups / Widgets)
    "Mod+C".spawn = [ "serpantinum" "msg" "toggle" "clipboard" ];
    "Mod+Space".spawn = [ "serpantinum" "msg" "toggle" "launcher" ];
    "Mod+M".spawn = [ "serpantinum" "msg" "toggle" "music" ];
    "Mod+B".spawn = [ "serpantinum" "msg" "toggle" "system" ];
    "Mod+Shift+W".spawn = [ "serpantinum" "msg" "toggle" "wallpaper" ];
    "Mod+S".spawn = [ "serpantinum" "msg" "toggle" "calendar" ];
    "Mod+N".spawn = [ "serpantinum" "msg" "toggle" "network" ];
    "Mod+V".spawn = [ "serpantinum" "msg" "toggle" "volume" ];
    "Mod+H".spawn = [ "serpantinum" "msg" "toggle" "guide" ];

    # Hardware Controls (Volume & Mic routed through Serpantinum)
    "XF86AudioRaiseVolume".spawn = [ "serpantinum" "volume" "raise" ];
    "XF86AudioLowerVolume".spawn = [ "serpantinum" "volume" "lower" ];
    "XF86AudioMute".spawn = [ "serpantinum" "volume" "mute-toggle" ];
    "XF86AudioMicMute".spawn = [ "serpantinum" "volume" "mic-toggle" ];
    "XF86MonBrightnessUp".spawn = [ "serpantinum" "brightness" "raise" ];
    "XF86MonBrightnessDown".spawn = [ "serpantinum" "brightness" "lower" ];

    # Media Playback (Using playerctl as specified in Serpantinum's Niri config)
    "Mod+Shift+Space".spawn = [ (lib.getExe pkgs.playerctl) "play-pause" ];
    "XF86AudioPlay".spawn = [ (lib.getExe pkgs.playerctl) "play-pause" ];
    "XF86AudioPause".spawn = [ (lib.getExe pkgs.playerctl) "play-pause" ];
    "XF86AudioNext".spawn = [ (lib.getExe pkgs.playerctl) "next" ];
    "XF86AudioPrev".spawn = [ (lib.getExe pkgs.playerctl) "previous" ];

    # Screenshots (Routed through Serpantinum)
    "Mod+P".spawn = [ "serpantinum" "screenshot" ]; # Region selection (Your most used)
    "Mod+Shift+P".spawn = [ "serpantinum" "screenshot" "--edit" ]; # Region selection + Edit menu
    "Mod+Control+P".spawn = [ "serpantinum" "screenshot" "--full" ]; # Full monitor
    "Mod+Control+Shift+P".spawn = [ "serpantinum" "screenshot" "--full" "--edit" ]; # Full monitor + Edit menu

    # Serpantinum Workspaces Navigation (Switching Workspaces 1-10)
    "Mod+1".spawn = [ "serpantinum" "msg" "workspace" "1" ];
    "Mod+2".spawn = [ "serpantinum" "msg" "workspace" "2" ];
    "Mod+3".spawn = [ "serpantinum" "msg" "workspace" "3" ];
    "Mod+4".spawn = [ "serpantinum" "msg" "workspace" "4" ];
    "Mod+5".spawn = [ "serpantinum" "msg" "workspace" "5" ];
    "Mod+6".spawn = [ "serpantinum" "msg" "workspace" "6" ];
    "Mod+7".spawn = [ "serpantinum" "msg" "workspace" "7" ];
    "Mod+8".spawn = [ "serpantinum" "msg" "workspace" "8" ];
    "Mod+9".spawn = [ "serpantinum" "msg" "workspace" "9" ];
    "Mod+0".spawn = [ "serpantinum" "msg" "workspace" "10" ];

    # Serpantinum Workspaces Window Moving (Move Active Window to Workspaces 1-10)
    "Mod+Shift+1".spawn = [ "serpantinum" "msg" "workspace" "1" "move" ];
    "Mod+Shift+2".spawn = [ "serpantinum" "msg" "workspace" "2" "move" ];
    "Mod+Shift+3".spawn = [ "serpantinum" "msg" "workspace" "3" "move" ];
    "Mod+Shift+4".spawn = [ "serpantinum" "msg" "workspace" "4" "move" ];
    "Mod+Shift+5".spawn = [ "serpantinum" "msg" "workspace" "5" "move" ];
    "Mod+Shift+6".spawn = [ "serpantinum" "msg" "workspace" "6" "move" ];
    "Mod+Shift+7".spawn = [ "serpantinum" "msg" "workspace" "7" "move" ];
    "Mod+Shift+8".spawn = [ "serpantinum" "msg" "workspace" "8" "move" ];
    "Mod+Shift+9".spawn = [ "serpantinum" "msg" "workspace" "9" "move" ];
    "Mod+Shift+0".spawn = [ "serpantinum" "msg" "workspace" "10" "move" ];


    # Navigation
    "Mod+Left".focus-column-left = _: {};
    "Mod+Right".focus-column-right = _: {};
    "Mod+Up".focus-workspace-up = _: {};
    "Mod+Down".focus-workspace-down = _: {};
    "Mod+Control+Left".focus-monitor-left = _: {};
    "Mod+Control+Right".focus-monitor-right = _: {};

    # Moving Columns & Windows
    "Mod+Shift+Left".move-column-left = _: {};
    "Mod+Shift+Right".move-column-right = _: {};
    "Mod+Control+Up".move-column-to-workspace-up = _: {};
    "Mod+Control+Down".move-column-to-workspace-down = _: {};
    "Mod+Control+Shift+Left".move-column-to-monitor-left = _: {};
    "Mod+Control+Shift+Right".move-column-to-monitor-right = _: {};

    # Sizing, Resizing & Layout Adjustments
    "Mod+BracketLeft".set-column-width = "-5%";
    "Mod+BracketRight".set-column-width = "+5%";
    "Mod+Shift+Up".set-window-height = "-5%";
    "Mod+Shift+Down".set-window-height = "+5%";
    "Mod+F".maximize-column = _: {};
    "Mod+Shift+F".fullscreen-window = _: {};
    "Mod+Shift+BracketLeft".consume-or-expel-window-left = _: {};
    "Mod+Shift+BracketRight".consume-or-expel-window-right = _: {};

    # Floating & Overview
    "Mod+Comma".toggle-window-floating = _: {};
    "Mod+Shift+Comma".switch-focus-between-floating-and-tiling = _: {};

    # Applications
    "Mod+Return".spawn = [ (lib.getExe pkgs.kitty) ];
    "Mod+D".spawn = [ (lib.getExe pkgs.vesktop) ];
    "Mod+W".spawn = [ (lib.getExe pkgs.firefox) ];
    "Mod+T".spawn = [ (lib.getExe pkgs.zed-editor) ];
    "Mod+E".spawn = [ (lib.getExe pkgs.kdePackages.dolphin) ];
  };
}
