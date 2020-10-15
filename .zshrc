# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH
# Path to your oh-my-zsh installation.
export ZSH="/Users/zack.pang/.oh-my-zsh"

# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="spaceship"

ZSH_CUSTOM=$HOME/.oh-my-zsh.d

plugins=(
    evalcache
    git
    vi-mode
    fzf
)

export SPACESHIP_ROOT=$ZSH_CUSTOM/themes/spaceship-prompt
source $ZSH/oh-my-zsh.sh

# User configuration
## Spaceship configuration
### DIR
export SPACESHIP_DIR_COLOR=207
### kubecontext
export SPACESHIP_KUBECONTEXT_SHOW=false

## Base16 Shell
BASE16_SHELL="$HOME/.config/base16-shell/"
[ -n "$PS1" ] && \
    [ -s "$BASE16_SHELL/profile_helper.sh" ] && \
	eval "$("$BASE16_SHELL/profile_helper.sh")"

## ENV setup
_evalcache rbenv init -
_evalcache nodenv init -
_evalcache pipenv --completion
_evalcache thefuck --alias
_evalcache stern --completion=zsh
_evalcache pyenv init -
_evalcache pyenv virtualenv-init -

# You may need to manually set your language environment
export LANG=en_US.UTF-8

alias k="kubectl"
# alias vim="nvim"
alias dotfiles="/usr/bin/git --git-dir=$HOME/.dotfiles --work-tree=$HOME"
alias ec="emacsclient -c"
alias pg_start="launchctl load ~/Library/LaunchAgents/homebrew.mxcl.postgresql.plist"
alias pg_stop="launchctl unload ~/Library/LaunchAgents/homebrew.mxcl.postgresql.plist"	

export PATH=$HOME/go/bin:$HOME/.emacs.d/bin:$HOME/.cargo/bin:/Applications/Visual\ Studio\ Code.app/Contents/Resources/app/bin:$PATH
export KUBE_EDITOR=/usr/bin/vim

