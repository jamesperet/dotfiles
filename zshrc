# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="clean"

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable bi-weekly auto-update checks
DISABLE_AUTO_UPDATE="true"

# Uncomment to change how many often would you like to wait before auto-updates occur? (in days)
# export UPDATE_ZSH_DAYS=13

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse gem bundler brew)
plugins=(git)

source $ZSH/oh-my-zsh.sh

# TextMate
export TEXTMATE_PATH=/Applications/TextMate.app/Contents/Resources/mate
mate () {
    $TEXTMATE_PATH $1 $2 $3 $4 $5 $6
}
export EDITOR="$TEXTMATE_PATH -w"
export LC_CTYPE=en_US.UTF-8

export EDITOR=pico

# Get the aliases and functions
if [ -f ~/.bash_aliases ]; then
. ~/.bash_aliases
fi

[[ -s ~/.bashrc ]] && source ~/.bashrc

plugins=(rails3 git ruby brew gollum)

alias gollum="/Users/james/dev/gollum/bin/gollum"
