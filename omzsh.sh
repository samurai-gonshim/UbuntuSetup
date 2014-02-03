#!/usr/bin/env bash

echo 'Installing zsh ...'
sudo apt-get update && sudo apt-get install zsh

echo 'Installing oh-my-zsh ...'
wget --no-check-certificate https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O - | sh

echo "Pulling custom aliases from Gon's gist repo ..."
curl https://gist.github.com/samurai-gonshim/6a7514c75fa4960c0de6/raw/6b328e08b196846a5106aea582650b4eb4cb05ad/gonaliases.zsh > ~/.oh-my-zsh/custom/gonaliases.zsh

echo 'Changing shell ...'
chsh -s /bin/zsh
