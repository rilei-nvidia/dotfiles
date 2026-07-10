#/usr/bin/env sh

set -euxo pipefail

echo "Installing dotfiles for Linux"

echo "Installing vim configuration"
cp -v $(dirname "$0")/.vimrc ~/.vimrc

echo "Creating vim autoload directory"
mkdir -v -p ~/.vim/autoload

echo "Installing vim-plug"
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

echo "Installing bash aliases"
cp -v $(dirname "$0")/.bash_aliases ~/.bash_aliases

echo "Installing tmux configuration"
cp -v $(dirname "$0")/.tmux.conf ~/.tmux.conf

echo "Done!"
echo "Don't forget to run :PlugInstall and/or :PlugUpdate in vim"

