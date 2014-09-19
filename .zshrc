#colors
autoload -U colors && colors

#aliases
alias ls="ls --color=auto"
alias la="ls -la"
alias ll="ls -l"
alias lah="ls -lah"
alias sublime="subl"
alias emacs="emacs -nw"
alias irssi="screen irssi"
alias ack="ack-grep"
alias netflix="netflix-desktop"
alias please="sudo"

#path
typeset -U path
export GOPATH=$HOME/brogramming/go
export GOROOT=$HOME/bin/go
path=(
	$path
	~/bin
	~/bin/tomcat/bin
	~/bin/mongodb/bin
	$GOROOT/bin
	$GOPATH/bin
)

export JAVA_HOME=/usr/lib/jvm/java-7-openjdk-amd64
export TERM="xterm-256color"


# Set up the prompt
autoload -Uz promptinit
promptinit
PS1="%{$fg_bold[green]%}%n@%M %{$reset_color$fg[green]%}%~ $%{$reset_color%} "
#prompt suse 

setopt correctall
setopt autocd

# Use emacs keybindings even if our EDITOR is set to vi
bindkey -e

# Keep 1000 lines of history within the shell and save it to ~/.zsh_history:
HISTSIZE=1000
SAVEHIST=$HISTSIZE
HISTFILE=~/.zsh_history

setopt histignorealldups sharehistory

# Use modern completion system
autoload -Uz compinit
compinit

#search through history for command that starts with same
bindkey '\e[A' history-search-backward
bindkey '\e[B' history-search-forward

zstyle ':completion:*:descriptions' format '%U%B%d%b%u'
zstyle ':completion:*:warnings' format '%BSorry, no matches for: %d%b'

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
