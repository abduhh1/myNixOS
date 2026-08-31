{ lib, ... }: {
  options.flake.niriModules = lib.mkOption {
    type = lib.types.lazyAttrsOf lib.types.unspecified;
    default = {};
    description = "Allows multiple files to inject Niri config modules into the flake.";
  };
}
