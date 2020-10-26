#!/bin/bash

###########################
### Installing Packages ###
###########################
# Installing HomeBrew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# Installing Oh My Zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# Installing Packages with Brew
while read package; do brew install "$package" ; done < ./packages/homebrew_packages.txt

##########################
### Create Directories ###
##########################
SCRIPTS_DIR="$HOME/ScriptsDir"; echo $SCHOOL_DIR; chmod -R 755 $SCRIPTS_DIR
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
python3 -m pip install --user -r ./packages/pip_requirements.txt

# HTTPS to Git/SSH protocols
git config --global hub.protocol https

# Autocomplete
git clone git://github.com/ajh17/VimCompletesMe.git ~/.vim/pack/vendor/start/VimCompletesMe

# Sea Shell Theme for terminal
curl -o ~/Desktop/SeaShells.terminal 'https://raw.githubusercontent.com/lysyi3m/macos-terminal-themes/master/schemes/SeaShells.terminal'

# Vim Completes Me
git clone --depth=1 https://github.com/amix/vimrc.git ~/.vim_runtime
sh ~/.vim_runtime/install_awesome_vimrc.sh

# Adding Profiles
cat ./profiles/rfiles/bash_profile.txt >> ~/.bashrc
cat ./profiles/vim_profile.txt >> ~/.vimrc
cat ./profiles/zsh_profile.txt >> ~/.zshrc

# Installing Editor Packages
while read package; do apm install "$package" ; done < ./packages/atom_packages.txt
while read package; do code --install-extension "$package" ; done < ./packages/vscode_packages.txt