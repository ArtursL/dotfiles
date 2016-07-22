#!/bin/bash

# Run with `curl https://raw.githubusercontent.com/splenetic/dotfiles/master/setup.sh | bash`

set -e
REPO="https://github.com/ArtursL/dotfiles.git"
DOTDIR="$HOME/.dotfiles"
if [ ! -d "$DOTDIR" ]; then
    git clone --recursive $REPO "$DOTDIR"
elif [ "$(cd "$DOTDIR" && git config --get remote.origin.url)" != "${REPO}" ]; then
    >&2 echo "Unknown .dotfiles folder exists."
    >&2 echo "Please delete and try again."
    exit 1
else
    echo "Dotfiles found!"
    echo "Updating..."
    (cd "$DOTDIR" && git pull && git submodule update --init)
fi

pushd $HOME
ln -sfv .dotfiles/.vim .vim
ln -sfv .dotfiles/.vimrc .vimrc
ln -sfv .dotfiles/.tmux.conf .tmux.conf
popd
