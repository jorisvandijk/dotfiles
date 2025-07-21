[[ $- != *i* ]] && return

eval "$(starship init bash)"
eval "$(fzf --bash)"

alias ..='cd ..'
alias c='clear'
alias cat='bat'
alias ga='git add -A'
alias gc='git commit -m' 
alias gp='git push'
alias gs='git status'
alias grep='grep --color=auto'
alias h='SearchHistory'
alias la='exa -lab --header --color=always --group-directories-first --long --git'
alias ls='exa -lb --header --color=always --group-directories-first --long --git'
alias m='micro'
alias o='cd && micro $(fzf -m --preview="bat --color=always {}")'
alias p='pulsemixer'
alias push='Push'
alias server='ssh root@192.168.1.34'
alias ua='uf && us && uh && ud'
alias ud='cd $HOME/git/dotfiles && ./stow'
alias uf='cd $HOME/git/nix/ && nix flake update'
alias uh='cd $HOME/git/nix/ && home-manager switch --flake .'
alias us='sudo nixos-rebuild switch --flake $HOME/git/nix/'
alias w='curl wttr.in'
alias x='chmod +x'
alias xprop='hyprctl clients'

bind 'set completion-ignore-case on'
bind 'set show-all-if-ambiguous on'
bind 'TAB:menu-complete'

PS1='[\u@\h \W]\$ '

# export PATH=$HOME/.local/bin::$PATH
export PATH="$HOME/.local/share/gem/ruby/3.3.0/bin:$HOME/.local/bin:$PATH"
export STARSHIP_CONFIG="$HOME/.config/starship/starship.toml"
export "MICRO_TRUECOLOR=1"

function ex () {
   if [ -f $1 ] ; then
       case $1 in
           *.tar.bz2)   tar xvjf $1    ;;
           *.tar.gz)    tar xvzf $1    ;;
           *.bz2)       bunzip2 $1     ;;
           *.rar)       unrar x $1     ;;
           *.gz)        gunzip $1      ;;
           *.tar)       tar xvf $1     ;;
           *.tbz2)      tar xvjf $1    ;;
           *.tgz)       tar xvzf $1    ;;
           *.zip)       unzip $1       ;;
           *.7z)        7z x $1        ;;
           *.xz)        tar xvJf $1    ;;
           *)           echo "I don't know how to extract '$1'..." ;;
       esac
   else
       echo "'$1' is not a valid file!"
   fi
}

hs() {
    cd ~/git/website
    hugo server -D
    rm ~/git/website/.hugo_build.lock 2>/dev/null
}

hn() {
    if [ -z "$1" ]; then
        echo "Error: Post name required" >&2
        echo "Usage: hn <post-name>" >&2
        return 1
    fi
    
    cd /home/joris/git/website
    hugo new "posts/${1}.md"
    micro content/posts/"${1}.md"
}

shopt -s autocd
shopt -s cdspell
shopt -s checkwinsize
shopt -s histappend

eval "$(zoxide init --cmd cd bash)"

