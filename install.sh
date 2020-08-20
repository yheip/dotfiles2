#!/bin/sh


sudo apt install stow -y
stow ubuntu-bash
stow emacs
stow systemd-user

systemctl --user enable emacs.service
systemctl --user start emacs.service
