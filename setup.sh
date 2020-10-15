#!/usr/bin/env bash
set -euo pipefail

echo "Setup ..."

echo "Changing default shell to zsh ..."
sudo dscl . change /Users/$USER UserShell $SHELL $(which zsh)

printf "Check if homebrew installed ..."
if test ! $(which brew); then
    echo "no, Installing homebrew ..."
    ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
else
    echo "yes"
fi

echo "Installing homebrew packages ..."

# Emacs Emacs dep
brew tap d12frosted/emacs-plus
brew install emacs-plus --without-cocoa \
	fd \
	rg \
	coreutils

brew install \
    tree \
    wget \
    git \
    go \
    reattach-to-user-namespace \
    tmux \
    zsh \
    the_silver_searcher \
    fzf \
    rbenv \
    pipenv \
    pyenv \
    thefuck \
    nodenv \
    tldr \
    stern \
    postgres

# Font
brew tap homebrew/cask-fonts
brew cask install font-hack-nerd-font

# Keyboard preference
defaults write -g ApplePressAndHoldEnabled -bool true

# Install tools
export GO111MODULE=on
go get golang.org/x/tools/gopls@latest
go get golang.org/x/tools/cmd/guru@latest


# Postgres
ln -sfv /usr/local/opt/postgresql/*.plist ~/Library/LaunchAgents

# Useful apps
brew cask install rectangle
