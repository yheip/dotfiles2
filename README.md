# dotfiles

## Setup
```sh
alias dotfiles="/usr/bin/git --git-dir=$HOME/.dotfiles --work-tree=$HOME"
git clone --bare https://github.com/yheip/dotfiles2.git $HOME/.dotfiles
dotfiles checkout
dotfiles config --local status.showUntrackedFiles no
dotfiles submodule update --init --depth 1

# brew
sh setup.sh

# Setup doom emacs
~/.emacs.d/bin/doom install
```
