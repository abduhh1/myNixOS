 { self, inputs, ... }: {
  flake.niriModules.window-rules = [
    {
      matches = [{ app-id = "^vesktop$"; }];
      open-on-workspace = "2";
    }
    {
      matches = [{ app-id = "^steam$"; title = "^notificationtoasts_.*_desktop$"; }];
      default-floating-position = _: { props = { x = 20; y = 20; relative-to = "bottom-right"; }; };
      open-focused = false;
    }
    {
      matches = [{ app-id = "^steam$"; title = "^Steam Big Picture Mode$"; }];
      open-fullscreen = true;
    }
    {
      matches = [ ]; # empty = applies to all windows, or scope it
      geometry-corner-radius = 12;
      clip-to-geometry = true;
    }
  ];
}
