#!/bin/bash

# Assuming python virtual env is already installed
# Remember to : chmod 755 create_venv.sh

LOCATION=$1
ALIAS=$2

if python3 -m venv $LOCATION/venv ; then
    echo "alias $ALIAS='cd $LOCATION && source venv/bin/activate'" >> ~/.bash_profile
    echo "Congrats :) venv has been created!"
else
    echo "Oh no :( There was an error ..."
fi
