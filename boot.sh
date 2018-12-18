#!/bin/bash

echo QUICK BOOT BB

echo This is a quick boot script. Make sure you\'ve run zsh.sh first. Would you like to begin? \(y/n\)
read deci
if [ "$deci" != "y" ]
then 
    echo You\'ve selected not to proceed. Exiting!
    exit 1
fi
echo 


# Just the basics for now
echo Installing InsomniaX ...
open http://insomniax.semaja2.net/InsomniaX-2.1.8.tgz
echo 

echo Installing Spotify ... 
open https://www.spotify.com/us/download/mac/
echo 

echo Installing Vscode ...
open https://code.visualstudio.com/docs/?dv=osx
echo 

echo Installing Amethyst ...
brew cask install amethyst
echo 

echo Installing Neofetch ...
brew install neofetch
echo 

echo Installing Python ... 
brew install python
echo 

echo Installing iterm2 ..
brew cask install iterm2
echo

echo ohmyzsh now!

cp -i .zshrc ~/
cp -i philips_custom.zsh-theme ~/.oh-my-zsh/custom/themes

git clone https://github.com/zsh-users/zsh-autosuggestions ~/.zsh/zsh-autosuggestions
echo 

#powerline fonts
# clone
git clone https://github.com/powerline/fonts.git --depth=1
# install
cd fonts
./install.sh
# clean-up a bit
cd ..
rm -rf fonts

echo Installing virtual environments \for python ...
pip3 install virtualenvwrapper
~/
mkdir projects
echo

echo You\'re ready to go! But you\'re not \done.
echo 
echo remember to run: git config --global user.email \"email@example.com\"
echo