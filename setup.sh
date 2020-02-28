#!/bin/bash

###########################
### Installing Packages ###
###########################
if [[ "$OSTYPE" == "darwin"* ]]; then
    # Install HomeBrew
    /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

    # Install Oh My Zsh
    sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

    # Install Packages with Brew
    brew install hub # github package
    brew install the_silver_searcher # faster way to find keywords
    brew install python3

else # Ubuntu OS

    # Install Packages with apt-get
    apt-get install silversearcher-ag

fi

##########################
### Create Directories ###
##########################
SCRIPTS_DIR="$HOME/ScriptsDir"; echo $SCHOOL_DIR
WORK_DIR="$HOME/WorkDir" ; echo $WORK_DIR
SCHOOL_DIR="$HOME/SchoolDir"; echo $SCHOOL_DIR
SCREEN_SHOTS_DIR="$HOME/Desktop/Screen_Shots"; echo $SCREEN_SHOTS_DIR
mkdir -p $WORK_DIR $SCHOOL_DIR $SCRIPTS_DIR $SCREEN_SHOTS_DIR

if [[ "$OSTYPE" == "darwin"* ]]; then
    # redirecting screenshots to folder
    defaults write com.apple.screencapture location $SCREEN_SHOTS_DIR
fi


##########################
### Create BashProfile ###
##########################
touch ~/.bash_profile
cp ./bash_profile ~/.bash_profile

#############################
### Vim + Terminal Things ###
#############################
pip3 install --upgrade pip --user
mkdir ~/.config

# autocomplete
git clone git://github.com/ajh17/VimCompletesMe.git ~/.vim/pack/vendor/start/VimCompletesMe

# sea shell theme for terminal
curl -o ~/Desktop/SeaShells.terminal 'https://raw.githubusercontent.com/lysyi3m/macos-terminal-themes/master/schemes/SeaShells.terminal'

# vim completes me
git clone --depth=1 https://github.com/amix/vimrc.git ~/.vim_runtime
sh ~/.vim_runtime/install_awesome_vimrc.sh

# my rules to terminal
touch ~/.vimrc
echo "set nu" >> ~/.vimrc
echo "set laststatus=2" >> ~/.vimrc
echo "set t_Co=256" >> ~/.vimrc

# adding bash_profile to zshrc
echo "source ~/.bash_profile" >> ~/.zshrc

########################
### Developer Things ###
########################
python3 -m pip install --user virtualenv

