{ config, ... }:
{
  xdg.configFile."karabiner/karabiner.json".source =
    config.lib.file.mkOutOfStoreSymlink
      "${config.home.homeDirectory}/Git/dotfiles/config/karabiner/karabiner.json";
}
