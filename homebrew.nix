{ ... }:
{
  environment.variables.HOMEBREW_NO_INTERACTIVE = "1";

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
