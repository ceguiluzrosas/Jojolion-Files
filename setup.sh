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

##################
### Vim Things ###
##################

# autocomplete
git clone git://github.com/ajh17/VimCompletesMe.git ~/.vim/pack/vendor/start/VimCompletesMe

