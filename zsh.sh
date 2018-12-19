#!/bin/bash

echo This is zsh installation. Would you like to begin? \(y/n\)
read deci
if [ "$deci" != "y" ]
then 
    echo You\'ve selected not to proceed. Exiting!
    exit 1
fi
echo 

#BREW BABY
echo Installing Brew ...
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
echo 

echo Installing Git ...
brew install git
echo 

echo Installing zsh ...
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"