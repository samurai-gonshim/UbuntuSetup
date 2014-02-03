#!/usr/bin/env bash

echo 'Installing rake ... '
sudo apt-get update && sudo apt-get install -y rake

echo 'Installing Janus package for vim...'
curl -Lo- https://bit.ly/janus-bootstrap | bash

echo 'Setting up NeoBundle ...'
mkdir -p ~/.vim/bundle
git clone https://github.com/Shougo/neobundle.vim ~/.vim/bundle/neobundle.vim 
