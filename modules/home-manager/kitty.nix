{ self, inputs, ... }: {
  flake.homeModules.kitty = { pkgs, ... }: {
    programs.kitty = {
      enable = true;
      settings = {
        hide_window_decorations = "yes";
        background_opacity = "0.85";

        foreground              = "#e0e4db";
        background              = "#1c211b";
        selection_foreground    = "#d5e8cf";
        selection_background    = "#3b4b38";
        cursor                  = "#a1d39a";
        cursor_text_color       = "#09390f";
        url_color               = "#a0cfd4";
        active_border_color     = "#a1d39a";
        inactive_border_color   = "#424940";
        bell_border_color       = "#ffb4ab";
        wayland_titlebar_color  = "system";
        macos_titlebar_color    = "system";
        active_tab_foreground   = "#bcf0b4";
        active_tab_background   = "#235024";
        inactive_tab_foreground = "#c2c9bd";
        inactive_tab_background = "#1c211b";
        tab_bar_background      = "#10140f";
        mark1_foreground = "#09390f";
        mark1_background = "#a1d39a";
        mark2_foreground = "#253423";
        mark2_background = "#b9ccb3";
        mark3_foreground = "#00363b";
        mark3_background = "#a0cfd4";
        color0  = "#424940";
        color8  = "#8c9388";
        color1  = "#ffb4ab";
        color9  = "#93000a";
        color2  = "#a1d39a";
        color10 = "#bcf0b4";
        color3  = "#a0cfd4";
        color11 = "#bcebf1";
        color4  = "#b9ccb3";
        color12 = "#d5e8cf";
        color5  = "#235024";
        color13 = "#3b693a";
        color6  = "#3b4b38";
        color14 = "#1f4d52";
        color7  = "#c2c9bd";
        color15 = "#e0e4db";
      };
    };
  };
}
