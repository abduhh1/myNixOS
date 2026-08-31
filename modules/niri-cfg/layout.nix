{ self, inputs, ... }: {
  flake.niriModules.layout = {
      gaps = 16;
      center-focused-column = "never";

      preset-column-widths = [
        { proportion = 0.33333; }
        { proportion = 0.5; }
        { proportion = 0.66667; }
      ];

      default-column-width = { proportion = 0.5; };

      focus-ring = {
        width = 6;
        # Wrap the hyphenated keys in quotes so Nix compiles them properly
        "active-color" = "#49A952";
        "inactive-color" = "#585b70";
      };

      shadow = {
        on = _: {};
        softness = 30;
        spread = 5;
        offset = _: { props = { x = 0; y = 5; }; };
        color = "#0007";
      };
    };
}
