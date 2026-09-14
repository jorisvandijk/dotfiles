{ ... }:
{
  system.defaults.CustomUserPreferences = {

    "com.dwarvesv.minimalbar" = {
      isAutoStart = true;
      areSeparatorsHidden = true;
    };

    "com.if.Amphetamine" = {
      "Hide Dock Icon" = true;
      "Allow Display Sleep" = false;
      "Allow Closed-Display Sleep" = true;
      "Allow Screen Saver" = false;
      "Default Duration" = 0;
      "Enable Mouse Movement" = false;
      "Icon Style" = 0;
      "Enable Statistics" = true;
    };

    "com.sindresorhus.Command-X" = {
      newMethod = true;
      # Standard ⌘X / ⌘V bindings (Carbon key codes)
      "KeyboardShortcuts_cut" = "{\"carbonKeyCode\":7,\"carbonModifiers\":256}";
      "KeyboardShortcuts_paste" = "{\"carbonKeyCode\":9,\"carbonModifiers\":256}";
    };

    "com.doomlaser.cursorcerer" = {
      autoShow = true;
      idleHide = 5;
      # Control+Option+K toggle shortcut
      toggleCursorHotKey = {
        keyCode = 40;
        modifiers = 6144;
      };
    };

    "com.objective-see.oversight" = {
      startAtLogin = true;
      noupdateMode = true;
    };

    "com.raycast.macos" = {
      onboardingCompleted = true;
      raycastGlobalHotkey = "Command-49";
      raycastPreferredWindowMode = "default";
      raycastShouldFollowSystemAppearance = true;
    };

    # LuLu: firewall allow/deny rules are stored by the system daemon,
    # not in a user plist — configure manually after install.

    # WireGuard: tunnels live in the NetworkExtension profile system
    # (keychain-backed). Store reference .conf files in the repo and
    # import via "Import tunnel(s) from file" on a fresh machine.
  };
}
