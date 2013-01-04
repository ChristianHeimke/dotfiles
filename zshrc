# Path to oh-my-zsh configuration.
export ZSH=$HOME/.oh-my-zsh

# Set theme
export ZSH_THEME="miloshadzic"

# Load plugins
plugins=(git heroku brew cap gem node npm osx rbenv rvm rake rails rails3 vagrant)

source $ZSH/oh-my-zsh.sh

# Set path
export PATH=/Users/mario/bin:/usr/local/bin:/usr/local/sbin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/X11/bin

# Speed up git completion
__git_files () {
    _wanted files expl 'local files' _files
}

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"
