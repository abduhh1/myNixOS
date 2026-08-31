{ self, input, ... }: {
  flake.niriModules.outputs = {
    "eDP-1" = {
      position = _: { props = { x = 0; y = 0; }; };
      mode = "2560x1600@60.0";
      scale = 1.0;
    };
  };
}
