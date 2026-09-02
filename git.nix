{ config, ... }:
{
  programs.git = {
    enable = true;
    settings = {
      user.name = "Joris";
      user.email = "joris@jorisvandijk.com";
      init.defaultBranch = "main";
      core.hooksPath = "${config.home.homeDirectory}/.git-hooks";
      push.autoSetupRemote = true;
    };
  };
}
