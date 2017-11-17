#!/bin/bash

MY_APPS=(plank nmap sqlmap git terminator ghc apache2 wireshark psensor cabal-install)

for i in "${MY_APPS[@]}"
do
	sudo apt-get install $i -y
done

wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | sudo apt-key add -
sudo apt-get install apt-transport-https
echo "deb https://download.sublimetext.com/ apt/stable/" | sudo tee /etc/apt/sources.list.d/sublime-text.list
sudo apt-get update
sudo apt-get install sublime-text
