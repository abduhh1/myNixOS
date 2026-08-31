{ self, inputs, ... }: {
  flake.niriModules.spawn-at-startup = pkgs: lib: [
    [ "bash" "-c" "wl-paste --type text --watch cliphist store" ]
    [ "bash" "-c" "wl-paste --type image --watch cliphist store" ]
    [ "systemctl" "--user" "enable" "--now" "easyeffects" ]
    [ "serpantinumd" "start" ]
  ];
}
