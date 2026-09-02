# Dotfiles

Personal nix-darwin configuration for macOS (Apple Silicon). Manages system settings, packages, and per-application dotfiles via a single Nix flake.

## Stack

- [nix-darwin](https://github.com/nix-darwin/nix-darwin) — macOS system configuration
- [home-manager](https://github.com/nix-community/home-manager) — user environment and dotfiles
- [nix-homebrew](https://github.com/zhaofengli/nix-homebrew) — declarative Homebrew management
- [NUR](https://github.com/nix-community/NUR) — Nix User Repository overlays

## Apply

```sh
sudo darwin-rebuild switch --flake .#macbook
```

Or use the `u` alias if the shell config is already active.

## Structure

| File | Purpose |
|---|---|
| `flake.nix` | Entry point; declares inputs and the `macbook` system |
| `system.nix` | macOS system defaults (Dock, Finder, trackpad, screensaver, etc.) |
| `packages.nix` | Nix packages, Homebrew brews/casks, and Mac App Store apps |
| `homebrew.nix` | nix-homebrew module settings |
| `undesirables.nix` | Packages and services to disable/remove |
| `home.nix` | home-manager entry point; imports per-app modules |
| `shell.nix` | Zsh: aliases, abbreviations, prompt, zoxide, fzf |
| `git.nix` | Git config |
| `kitty.nix` | Kitty terminal config |
| `micro.nix` | Micro editor config |
| `librewolf.nix` | LibreWolf browser config |
| `newsboat.nix` | Newsboat RSS reader config |
| `yazi.nix` | Yazi file manager config |
| `hammerspoon.nix` | Hammerspoon automation config |
| `karabiner.nix` | Karabiner-Elements keyboard remapping |

## License

Unless otherwise noted, all files in this repository are dedicated to the public domain.

You are free to copy, modify, distribute, and use the contents for any purpose, including commercial use, without asking for permission.

[CC0 1.0 Universal](https://creativecommons.org/publicdomain/zero/1.0/)
