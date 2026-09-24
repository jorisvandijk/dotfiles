{ pkgs, ... }:
{
  nixpkgs.config.allowUnfree = true;

  # Apps managed in their own nix files (see home.nix imports):
  #   git           → git.nix
  #   kitty         → kitty.nix
  #   librewolf     → librewolf.nix
  #   micro         → micro.nix
  #   newsboat      → newsboat.nix
  #   yazi          → yazi.nix
  #   zed-editor    → zed.nix
  #   zsh, fzf, zoxide → shell.nix
  #   hammerspoon, karabiner-elements → homebrew casks, config in hammerspoon.nix / karabiner.nix

  environment.systemPackages = (with pkgs; [
    _7zz
    android-tools
    bash
    bat
    claude-code
    duti
    exiftool
    eza
    fd
    ffmpeg
    git
    git-filter-repo
    go
    hugo
    imagemagick
    inetutils
    innoextract
    jq
    mpv
    poppler-utils
    python314
    qpdf
    raycast
    resvg
    ripgrep
    rsync
    shellcheck
    terminal-notifier
    tree
    unar
    utm
    watch
    wget
    yt-dlp
  ]) ++ (with pkgs."nerd-fonts"; [
    caskaydia-cove
    symbols-only
  ]);

  homebrew = {
    taps = [];

    brews = [
      "mas"
      "mole"
    ];

    masApps = {
      "Amperfy" = 1530145038;
      "Amphetamine" = 937984704;
      "Bitwarden" = 1352778147;
      "Command X" = 6448461551;
      "WireGuard" = 1451685025;
    };

    casks = [
      "bambu-studio"
      "cryptomator"
      "cursorcerer"
      "discord"
      "gimp"
      "hammerspoon"
      "hiddenbar"
      "karabiner-elements"
      "lulu"
      "oversight"
      "pearcleaner"
      "privadovpn"
      "raspberry-pi-imager"
      "remanager"
      "steam"
    ];
  };
}
