# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="clean"

# Example aliases
# alias zshconfig="mate ~/.zshrc"
alias ohmyzsh="nano ~/.oh-my-zsh"

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

# Set default Editor
export EDITOR=nano

# Mou
alias mou="open /Applications/Mou.app"

# Postgre App
export PATH=$PATH:/Applications/Postgres.app/Contents/Versions/9.4/bin

# Get the aliases and functions
if [ -f ~/.bash_aliases ]; then
. ~/.bash_aliases
fi

# Add RVM to PATH for scripting
PATH=$PATH:$HOME/.rvm/bin

# Open oh-my-zsh configurations in text mate
alias zshell="nano ~/.zshrc"

# teamocil autocomplete
compctl -g '~/.teamocil/*(:t:r)' teamocil

# Cask Options
export HOMEBREW_CASK_OPTS="--caskroom=/Applications"

# NVM
source $(brew --prefix nvm)/nvm.sh
