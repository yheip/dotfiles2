if [ -f "$HOME/.bashrc" ]; then
  . "$HOME/.bashrc"
fi
export PATH="$HOME/go/bin:$HOME/.emacs.d/bin:$HOME/.nodenv/bin:$PATH"
eval "$(nodenv init -)"

alias ec="emacsclient -t"
