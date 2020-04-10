#!/bin/bash

###########################
### Installing Packages ###
###########################
# Installing HomeBrew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# Installing Oh My Zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# Installing Packages with Brew
brew install git # git
brew install hub # github package
brew install the_silver_searcher # faster way to find keywords
brew install python3 # latest version of python3

##########################
### Create Directories ###
##########################
SCRIPTS_DIR="$HOME/ScriptsDir"; echo $SCHOOL_DIR
WORK_DIR="$HOME/WorkDir" ; echo $WORK_DIR
SCHOOL_DIR="$HOME/SchoolDir"; echo $SCHOOL_DIR
SCREEN_SHOTS_DIR="$HOME/Desktop/Screen_Shots"; echo $SCREEN_SHOTS_DIR
CONFIG_DIR="$HOME/.config"; echo $CONFIG_DIR

# Creating directories
mkdir -p $WORK_DIR $SCHOOL_DIR $SCRIPTS_DIR $SCREEN_SHOTS_DIR $CONFIG_DIR

# Redirecting screenshots to folder
defaults write com.apple.screencapture location $SCREEN_SHOTS_DIR

########################
### Developer Things ###
########################
pip3 install --upgrade pip --user
python3 -m pip install --user virtualenv

# autocomplete
git clone git://github.com/ajh17/VimCompletesMe.git ~/.vim/pack/vendor/start/VimCompletesMe

# sea shell theme for terminal
curl -o ~/Desktop/SeaShells.terminal 'https://raw.githubusercontent.com/lysyi3m/macos-terminal-themes/master/schemes/SeaShells.terminal'

# vim completes me
git clone --depth=1 https://github.com/amix/vimrc.git ~/.vim_runtime
sh ~/.vim_runtime/install_awesome_vimrc.sh

# adding profiles
cat ./bash_profile.txt >> ~/.bashrc
cat ./vim_profile.txt >> ~/.vimrc
cat ./zsh_profile.txt >> ~/.zshrc

# installing atom packages
while read package; do apm install "$package" ; done < atom_packages.txt
