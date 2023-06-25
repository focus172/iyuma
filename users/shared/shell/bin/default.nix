{ config, ... }:

{
  home = {
    file = {
      ".local/bin/powermenu" = {
        executable = true;
        text = import ./rofiscripts/powermenu.nix { };
      };
    };
  };
  imports = [
    ./neofetch.nix
  ];
}