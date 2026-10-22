{ pkgs, ... }:
{
  programs.vscodium = {
    enable = true;
    # Installed via homebrew cask (packages.nix) for a more up-to-date build;
    # home-manager still manages settings/extensions at VSCodium's config paths.
    package = null;
    mutableExtensionsDir = false;

    argvSettings = {
      "enable-crash-reporter" = false;
    };

    profiles.default = {
      enableUpdateCheck = false;
      enableExtensionUpdateCheck = false;

      userSettings = {
        "workbench.colorTheme" = "Dracula Theme";
        "telemetry.telemetryLevel" = "off";
        "files.autoSave" = "afterDelay";

        "editor.fontFamily" = "'CaskaydiaCove Nerd Font Mono', monospace";
        "editor.fontLigatures" = true;
        "terminal.integrated.fontFamily" = "'CaskaydiaCove Nerd Font Mono'";

        "claudeCode.hideOnboarding" = true;

        "nix.enableLanguageServer" = true;
        "nix.serverPath" = "nixd";
        "nix.formatterPath" = "nixfmt";
        "[nix]" = {
          "editor.defaultFormatter" = "jnoortheen.nix-ide";
          "editor.formatOnSave" = true;
        };
      };

      extensions = with pkgs.nix-vscode-extensions.vscode-marketplace; [
        dracula-theme.theme-dracula
        ecmel.vscode-html-css
        jnoortheen.nix-ide
        streetsidesoftware.code-spell-checker
        github.vscode-pull-request-github
      ] ++ (with pkgs.vscode-extensions; [
        anthropic.claude-code
      ]);
    };
  };
}
