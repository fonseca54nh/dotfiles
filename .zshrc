# Set up the prompt

autoload -Uz promptinit
promptinit
prompt adam1

#setopt histignorealldups sharehistory

# Use emacs keybindings even if our EDITOR is set to vi
bindkey -e

# Keep 1000 lines of history within the shell and save it to ~/.zsh_history:
#HISTSIZE=1000
#SAVEHIST=1000
#HISTFILE=~/.zsh_history

# Use modern completion system
autoload -Uz compinit
compinit

zstyle ':completion:*' auto-description 'specify: %d'
zstyle ':completion:*' completer _expand _complete _correct _approximate
zstyle ':completion:*' format 'Completing %d'
zstyle ':completion:*' group-name ''
zstyle ':completion:*' menu select=2
eval "$(dircolors -b)"
zstyle ':completion:*:default' list-colors ${(s.:.)LS_COLORS}
zstyle ':completion:*' list-colors ''
zstyle ':completion:*' list-prompt %SAt %p: Hit TAB for more, or the character to insert%s
zstyle ':completion:*' matcher-list '' 'm:{a-z}={A-Z}' 'm:{a-zA-Z}={A-Za-z}' 'r:|[._-]=* r:|=* l:|=*'
zstyle ':completion:*' menu select=long
zstyle ':completion:*' select-prompt %SScrolling active: current selection at %p%s
zstyle ':completion:*' use-compctl false
zstyle ':completion:*' verbose true

zstyle ':completion:*:*:kill:*:processes' list-colors '=(#b) #([0-9]#)*=0=01;31'
zstyle ':completion:*:kill:*' command 'ps -u $USER -o pid,%cpu,tty,cputime,cmd'

#aliases
alias ..='cd ..'
alias pkg='sudo apt-get install'
alias et='sudo vim /usr/share/awesome/themes/default/theme.lua'
alias er='sudo vim ~/.config/awesome/rc.lua'
alias reb='sudo reboot'
alias pow='sudo poweroff'
alias cdd='cd ~/Downloads'
alias py='python'
alias pkq='apt-cache search'
alias ls='ls --color=auto'
alias ll='ls -a'
alias doc='cd ~/Documents'
alias ed='vim ~/.config/i3/config'
alias ved='vim ~/.vimrc'
alias zed='vim ~/.zshrc'
alias cls='clear'
alias red='vim README.md'
alias os='cd ~/Documents/prog/os/ckernel'
alias k='vim kernel.cpp'
alias i='vim base/interrupts.cpp'
alias up='sudo apt-get update && sudo apt-get upgrade'
alias v='vim'

#experimental
first-tab() {
    if [[ $#BUFFER == 0 ]]; then
        BUFFER="cd "
        CURSOR=3
        zle list-choices
    else
        zle expand-or-complete
    fi
}
zle -N first-tab
bindkey '^I' first-tab


######################################################
source ~/.config/powerlevel10k/powerlevel10k.zsh-theme

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ -f ~/.p10k.zsh ]] && source ~/.p10k.zsh
source /home/topcat/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
