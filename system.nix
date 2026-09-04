{ self, inputs, ... }:
{
  nixpkgs.hostPlatform = "aarch64-darwin";
  nixpkgs.overlays = [ inputs.nur.overlays.default ];
  system.stateVersion = 6;
  system.configurationRevision = self.rev or self.dirtyRev or null;
  system.primaryUser = "joris";
  users.users.joris.home = "/Users/joris";

  system.activationScripts.postActivation.text = ''
    # Disable "Slightly dim the display on battery" and auto-brightness
    pmset -b lessbright 0
    pmset -c lessbright 0
    cat > /etc/hosts <<'HOSTS'
127.0.0.1   localhost
255.255.255.255 broadcasthost
::1             localhost

10.10.10.110 home.vdijk.be
10.10.10.110 frigate.vdijk.be
10.10.10.110 tidarr.vdijk.be
10.10.10.110 sabnzbd.vdijk.be
10.10.10.110 radarr.vdijk.be
10.10.10.110 sonarr.vdijk.be
10.10.10.110 bazarr.vdijk.be
10.10.10.110 jellyfin.vdijk.be
10.10.10.110 npm.vdijk.be
10.10.10.110 qbittorrent.vdijk.be
10.10.10.110 lidarr.vdijk.be
10.10.10.110 prowlarr.vdijk.be
10.10.10.110 pihole.vdijk.be
10.10.10.110 pbs.vdijk.be
10.10.10.110 seerr.vdijk.be
10.10.10.110 immich.vdijk.be
10.10.10.110 romm.vdijk.be
10.10.10.110 navidrome.vdijk.be
10.10.10.110 wireguard.vdijk.be
10.10.10.110 proxmox.vdijk.be
10.10.10.110 docker.vdijk.be
HOSTS
  '';

  nix.settings.experimental-features = "nix-command flakes";

  nix.gc = {
    automatic = true;
    interval = { Hour = 4; Minute = 0; Weekday = 1; };
    options = "--delete-older-than 14d";
  };

  nix.optimise.automatic = true;

  security.pam.services.sudo_local.touchIdAuth = true;

  system.defaults = {
    dock = {
      autohide = true;
      autohide-delay = 1.0e+08;
      autohide-time-modifier = 0.0;
      expose-group-apps = true;
      launchanim = false;
      mru-spaces = true;
      orientation = "bottom";
      persistent-apps = [];
      show-process-indicators = false;
      show-recents = false;
      showhidden = false;
      tilesize = 1;
      wvous-tl-corner = 1;
      wvous-tr-corner = 1;
      wvous-bl-corner = 1;
      wvous-br-corner = 1;
    };

    finder = {
      AppleShowAllExtensions = true;
      FXDefaultSearchScope = "SCcf";
      FXEnableExtensionChangeWarning = false;
      FXPreferredViewStyle = "Nlsv";
      FXRemoveOldTrashItems = true;
      NewWindowTarget = "Home";
      QuitMenuItem = true;
      ShowExternalHardDrivesOnDesktop = false;
      ShowHardDrivesOnDesktop = false;
      ShowPathbar = true;
      ShowRemovableMediaOnDesktop = false;
      ShowStatusBar = true;
    };

    NSGlobalDomain = {
      AppleInterfaceStyle = "Dark";
      AppleShowScrollBars = "WhenScrolling";
      InitialKeyRepeat = 30;
      KeyRepeat = 2;
      NSAutomaticCapitalizationEnabled = false;
      NSAutomaticPeriodSubstitutionEnabled = false;
      NSAutomaticSpellingCorrectionEnabled = false;
      _HIHideMenuBar = true;
      "com.apple.swipescrolldirection" = false;
      "com.apple.trackpad.forceClick" = false;
    };

    screencapture = {
      location = "~/Documents";
      target = "clipboard";
    };

    screensaver = {
      askForPassword = true;
      askForPasswordDelay = 0;
    };

    trackpad = {
      Clicking = true;
      TrackpadThreeFingerDrag = true;
    };

    menuExtraClock = {
      ShowAMPM = false;
      ShowDayOfWeek = true;
    };

    WindowManager = {
      EnableStandardClickToShowDesktop = false;
      EnableTiledWindowMargins = false;
      GloballyEnabled = false;
      StandardHideDesktopIcons = true;
      StandardHideWidgets = true;
    };

    CustomUserPreferences = {
      NSGlobalDomain = {
        AppleAccentColor = 6;
        AppleMenuBarVisibleInFullscreen = false;
        CGDisableCursorLocationMagnification = true;
        "com.apple.sound.beep.volume" = 0;
        "com.apple.sound.uiaudio.enabled" = false;
      };

      "com.apple.Siri" = {
        StatusMenuVisible = false;
        VoiceTriggerUserEnabled = false;
      };

      "com.apple.assistant.support" = {
        "Assistant Enabled" = false;
      };

      "com.apple.BezelServices" = {
        dAuto = false;
      };

      "com.apple.gamed" = {
        GKOptedOutOfGameCenter = true;
      };
    };
  };
}
