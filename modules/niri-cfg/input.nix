{ self, inputs, ... }: {
  flake.niriModules.input = {
    keyboard.xkb.layout = "us,ua";
    mouse = {
      accel-profile = "flat";
      accel-speed = (-0.5);
      scroll-method = "no-scroll";
    };
    touchpad = {
      tap = _:{} ;
      natural-scroll = _:{} ;
    };
    focus-follows-mouse = _:{} ;
    workspace-auto-back-and-forth = _:{} ;
  };
}
