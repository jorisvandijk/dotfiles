{ ... }:
{
  imports = [
    ./git.nix
    ./kitty.nix
    ./librewolf.nix
./micro.nix
    ./yazi.nix
    ./newsboat.nix
    ./hammerspoon.nix
    ./karabiner.nix
    ./shell.nix
  ];

  targets.darwin.copyApps.enable = true;

  home.username = "joris";
  home.homeDirectory = "/Users/joris";
  home.stateVersion = "26.05";
}
