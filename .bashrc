[ -n "$PS1" ] && source ~/.dotfiles/.bash_profile

[ -s $HOME/.nvm/nvm.sh ] && . $HOME/.nvm/nvm.sh # This loads NVM

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"

# added by travis gem
[ -f /Users/denschu/.travis/travis.sh ] && source /Users/denschu/.travis/travis.sh
