#!/bin/bash

if [[ "$OSTYPE" == "darwin"* ]]; then
    # Install HomeBrew
    /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
    wait ${!}

    # Install Oh My Zsh
    sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
    wait ${!}

    # Install Packages with Brew
    brew install hub # from Github
fi

WORK_DIR="$HOME/WorkDir" ; echo $WORK_DIR
SCHOOL_DIR="$HOME/SchoolDir"; echo $SCHOOL_DIR
mkdir $WORK_DIR $SCHOOL_DIR
