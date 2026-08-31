{ self, inputs, ... }: {

  flake.nixosModules.niri-cfg = { pkgs, config, lib, system, ...}: {
    programs.niri = {
      enable = true;
      package = self.packages.${pkgs.stdenv.hostPlatform.system}.myNiri;
    };
    programs.dconf.enable = true;
    xdg.portal = {
      config.niri.default = [ "gnome" "gtk" ];
      extraPortals = with pkgs; [ xdg-desktop-portal-gnome ];
    };
  };

  perSystem = {system, pkgs, lib, self', ...}: {
    _module.args.pkgs = import inputs.nixpkgs {
      inherit system;
      config.allowUnfree = true;
    };

    packages.myNiri = inputs.wrapper-modules.wrappers.niri.wrap {
      inherit pkgs;

      # This pulls all of your custom files together cleanly!
      settings = {
        binds = self.niriModules.binds pkgs lib;
        outputs = self.niriModules.outputs;
        input = self.niriModules.input;
        layout = self.niriModules.layout;
        window-rules = self.niriModules.window-rules;
        spawn-at-startup = self.niriModules.spawn-at-startup pkgs lib;
        environment = self.niriModules.environment;
      };

    };
  };
}
