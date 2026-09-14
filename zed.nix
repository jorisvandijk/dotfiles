{ ... }:
{
  programs.zed-editor = {
    enable = true;
    extensions = [
      "codebook"
      "html"
      "markdown-snippets"
      "mermaid"
      "dracula"
    ];
    userSettings = {
      agent_servers = {
        "claude-acp" = {
          type = "registry";
        };
      };
      ui_font_size = 16;
      buffer_font_size = 15;
      theme = {
        mode = "system";
        light = "One Light";
        dark = "One Dark";
      };
    };
  };
}
