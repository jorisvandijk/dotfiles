{ ... }:
{
  programs.kitty = {
    enable = true;
    font = {
      name = "CaskaydiaCove Nerd Font Mono";
      size = 14;
    };

    themeFile = "Dracula";
	settings = {
	  enable_audio_bell = "no";
	  confirm_os_window_close = -1;
	  scrollback_lines = 100000;
	  window_margin_width = 4;
	  enabled_layouts = "splits";
	  focus_follows_mouse = "yes";
	};

    keybindings = {
      "cmd+h" = "previous_tab";
      "cmd+l" = "next_tab";
      "cmd+j" = "previous_tab";
      "cmd+k" = "next_tab";
      "cmd+b" = "launch --location=vsplit";
      "cmd+w" = "close_window_with_confirmation ignore-shell";
    };
  };
}
