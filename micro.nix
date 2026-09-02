{ ... }:
{
  programs.micro = {
    enable = true;
    settings = {
      colorscheme = "dracula";
      mkparents = true;
      softwrap = true;
      wordwrap = true;
    };
  };

  xdg.configFile."micro/bindings.json".text = builtins.toJSON {
    "Alt-/" = "lua:comment.comment";
    "CtrlUnderscore" = "lua:comment.comment";
  };

  xdg.configFile."micro/colorschemes/dracula.micro".text = ''
    color-link default "#F8F8F2,#282A36"
    color-link comment "#6272A4,#282A36"
    color-link identifier "#50FA7B,#282A36"
    color-link identifier.class "#8BE9FD,#282A36"
    color-link identifier.var "#F8F8F2,#282A36"
    color-link constant "#BD93F9,#282A36"
    color-link constant.number "#F8F8F2,#282A36"
    color-link constant.string "#F1FA8C,#282A36"
    color-link symbol "#FF79C6,#282A36"
    color-link symbol.brackets "#F8F8F2,#282A36"
    color-link symbol.tag "#AE81FF,#282A36"
    color-link type "italic #8BE9FD,#282A36"
    color-link type.keyword "#FF79C6,#282A36"
    color-link special "#FF79C6,#282A36"
    color-link statement "#FF79C6,#282A36"
    color-link preproc "#FF79C6,#282A36"
    color-link underlined "#FF79C6,#282A36"
    color-link error "bold #FF5555,#282A36"
    color-link todo "bold #FF79C6,#282A36"
    color-link diff-added "#50FA7B,#282A36"
    color-link diff-modified "#FFB86C,#282A36"
    color-link diff-deleted "#FF5555,#282A36"
    color-link gutter-error "#FF5555,#282A36"
    color-link gutter-warning "#E6DB74,#282A36"
    color-link statusline "#F8F8F2,#282A36"
    color-link tabbar "#F8F8F2,#282A36"
    color-link indent-char "#6272A4,#282A36"
    color-link line-number "#6272A4,#282A36"
    color-link current-line-number "#F8F8F2,#282A36"
    color-link cursor-line "#44475A,#282A36"
    color-link color-column "#44475A,#282A36"
    color-link type.extended "default,#282A36"
    color-link editor "#F8F8F2,#282A36"
  '';
}
