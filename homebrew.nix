{ ... }:
{
  nix-homebrew = {
    enable = true;
    user = "joris";
    enableRosetta = true;
    autoMigrate = true;
    mutableTaps = true;
  };

  homebrew = {
    enable = true;
    onActivation = {
      cleanup = "uninstall";
      autoUpdate = false;
      upgrade = true;
    };
  };
}
