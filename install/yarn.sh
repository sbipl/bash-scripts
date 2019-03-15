#!/bin/bash

install_yarn () {
  echo -e "\n  Adding Yarn repo (Stable) .."
  # add GPG key
  curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -
  
  # add repo (Stable 1.13.0)
  echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list
  
  # update sources
  sudo apt update

  echo -e "\n\n  Installing Yarn .."
  # since using nvm, avoid the node installation with `--no-install-recommends`
  sudo apt install --no-install-recommends yarn
}


install_yarn

echo -e "\n  DONE. Yarn $(yarn --version) is installed. \n"




# LINKS
# https://yarnpkg.com/en/docs/install#debian-stable