{ ... }:
{
  programs.zsh = {
    enable = true;
    history = {
      size = 200000;
      save = 200000;
      ignoreDups = true;
      expireDuplicatesFirst = true;
      ignoreSpace = true;
    };

    autosuggestion.enable = true;
    syntaxHighlighting.enable = true;

    zsh-abbr = {
      enable = true;
      abbreviations = {
        "copy" = "rsync -a --no-owner --partial --info=progress2 -e ssh";
        "symlink" = "ln -s";
      };

      globalAbbreviations = {
        "data" = "root@192.168.1.5:/data/";
        "pc" = "|pbcopy";
        "srv" = "root@192.168.1.5:/data/";
      };
    };

    shellAliases = {
      ".." = "cd ..";
      "c" = "clear";
      "cat" = "bat";
      "eject" = "jEject";
      "ex" = "jExtract";
      "ga" = "git add -A";
      "gd" = "git diff --color=always";
      "gp" = "git push";
      "grep" = "grep --color=auto";
      "gs" = "git status";
      "hn" = "jHugoHelper new";
      "hm" = "jHugoHelper status";
      "hs" = "jHugoHelper server";
      "la" = "jList -a";
      "ls" = "jList";
      "lsblk" = "diskutil list";
      "m" = "micro";
      "n" = "newsboat";
      "newrepo" = "jNewRepo";
      "o" = "jOpenFZF";
      "push" = "jPush";
      "repos" = "jRepos";
      "s" = "jFindApp";
      "server" = ''ssh -t root@192.168.1.5 "tmux attach || tmux new -s main"'';
      "space" = ''du -sh "''${1:-.}"'';
      "u" = "sudo darwin-rebuild switch --flake /Users/joris/Git/nix/#macbook && brew update && brew upgrade";
      "w" = "curl wttr.in";
      "x" = "chmod +x";
    };

    sessionVariables = {
      EDITOR = "micro";
      VISUAL = "micro";
      COLORTERM = "truecolor";
      HOMEBREW_NO_ANALYTICS = "1";
      HOMEBREW_NO_ENV_HINTS = "1";
    };

    profileExtra = ''
      eval "$(/opt/homebrew/bin/brew shellenv)"
      export PATH="/run/current-system/sw/bin:$HOME/git/scripts:$HOME/.local/bin:$HOME/go/bin:$PATH"
    '';

    initContent = ''
      setopt hist_save_no_dups
      setopt hist_verify

      git_status_prompt() {
        local st
        st=$(git --no-optional-locks status --porcelain 2>/dev/null) || return
        case $st in
          (''')                                echo " %F{green}✓%f" ;;
          ((|*$'\n')(DD|AU|UD|UA|DU|AA|UU)*)   echo " %F{red}●%f" ;;
          (*)                                  echo " %F{yellow}✘%f" ;;
        esac
      }

      setopt PROMPT_SUBST

      PROMPT='
      %F{green}┌──(%f%F{135}%~%F{green})%f$(git_status_prompt)
      %F{green}└─%f%(?,%F{135}λ%f,%F{red}✘%f) '

      eval "$(zoxide init zsh --cmd cd)"

      cl() {
        cd "$@" && ls;
      }

      fcd() {
        cd "$(\ls -d */ | fzf)";
      }

      gc() {
        git commit -m "$*"
      }

      h() {
        local cmd
        cmd=$( ( fc -l -n 1 -1 || fc -l -n ) | fzf --tac --no-sort)
        [ -n "$cmd" ] && print -z "$cmd"
      }
    '';
  };

  programs.fzf = {
    enable = true;
    enableZshIntegration = true;
  };

  programs.zoxide.enable = true;
}
