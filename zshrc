# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="clean"

# Example aliases
# alias zshconfig="mate ~/.zshrc"
alias ohmyzsh="mate ~/.oh-my-zsh"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable bi-weekly auto-update checks
DISABLE_AUTO_UPDATE="true"

# Uncomment to change how many often would you like to wait before auto-updates occur? (in days)
# export UPDATE_ZSH_DAYS=13

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
COMPLETION_WAITING_DOTS="true"

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

# Mou
alias mou="open /Applications/Mou.app"
alias rails_notes="open /Applications/Mou.app ~/Dev/rails_notes/index.md"

# Postgre App
export PATH=$PATH:/Applications/Postgres.app/Contents/Versions/9.4/bin

# Get the aliases and functions
if [ -f ~/.bash_aliases ]; then
. ~/.bash_aliases
fi

# [[ -s ~/.bashrc ]] && source ~/.bashrc

PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting


# Start Avalanche project
avalanche2_start (){
	# Open postgres app
	echo "Starting Postgre App"
	open /Applications/Postgres.app
	# Open project in texmate
	echo "Opening TextMate project"
	mate ~/dev/avalanche2
	cd ~/dev/avalanche2
	# start rails server
	echo "Starting Foreman server"
	cd ~/dev/avalanche2
	foreman start
}

# Open oh-my-zsh configurations in text mate
alias zshell="mate ~/.zshrc"

# SSH
ssh_dev_machine () { ssh root@104.236.21.94 }
ssh_gitlab () { ssh root@104.236.77.111 }

# Gist
source /usr/share/gist/gist.bash

# teamocil autocomplete
compctl -g '~/.teamocil/*(:t:r)' teamocil
