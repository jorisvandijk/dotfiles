{ pkgs, ... }:
{
  nixpkgs.config.allowUnfree = true;

  environment.systemPackages = (with pkgs; [
    _7zz
    android-tools
    bash
    bat
    claude-code
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
    zed-editor
  ]) ++ (with pkgs."nerd-fonts"; [
    caskaydia-cove
    symbols-only
  ]);

  homebrew = {
    taps = [
      "gromgit/fuse"
    ];

    brews = [
      "gromgit/fuse/sshfs-mac"
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
      "macfuse"
      "mark-text"
      "oversight"
      "pearcleaner"
      "privadovpn"
      "raspberry-pi-imager"
      "remanager"
      "steam"
    ];
  };
}
