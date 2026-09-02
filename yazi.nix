{ ... }:
{
  programs.yazi = {
    enable = true;
    enableZshIntegration = true;
    keymap = {
      manager.prepend_keymap = [
        {
          on = [ "Z" ];
          run = "cd $(zoxide query --interactive)";
          desc = "Jump with zoxide";
        }
      ];
    };
  };
}
