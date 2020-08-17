# dotfiles

## Setup
```sh
# Install stow
# MacOS
brew install stow
# Ubuntu
sudo apt install stow

git clone https://github.com/yheip/dotfiles ~/dotfiles
cd ~/dotfiles

# Symlink config file
stow emacs

# Unlink config file 
stow -D emacs
```
