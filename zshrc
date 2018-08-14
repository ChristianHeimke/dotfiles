# Path to oh-my-zsh configuration.
export ZSH=$HOME/.oh-my-zsh

# Set theme
export ZSH_THEME="robbyrussell"

# Add a few things to the path
export PATH="$HOME/bin:/usr/local/share/npm/bin:/usr/local/bin:$PATH"

# Load plugins
plugins=( bundler
          capistrano
          common-aliases
          docker
          docker-compose
          gem
          git
          knife
          kubectl
          rails
          rake
          ruby
          rvm
          sudo
          vagrant
          vscode
          wd)



source $ZSH/oh-my-zsh.sh

# Speed up git completion
__git_files () {
    _wanted files expl 'local files' _files
}

# Set iTerm tab name to PWD
function precmd() {
  echo -ne "\e]1;${PWD##*/}\a"
}

# Huge history size
export HISTSIZE=4096

# Source aliases and functions
source $HOME/.dotfiles/zsh/aliases
source $HOME/.dotfiles/zsh/functions

# Do not change tmux window title on `cd`
DISABLE_AUTO_TITLE=true

# Disable flow control keys
stty start undef
stty stop undef

# English!
export LANG="en_GB.UTF-8"

# Set $EDITOR
export EDITOR='nano'
