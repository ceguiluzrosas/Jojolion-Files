#!/bin/bash

# Assuming python virtual env is already installed

LOCATION=$1
ALIAS=$2

if python3 -m venv $LOCATION/venv ; then
    echo "alias $ALIAS='cd $LOCATION && source venv/bin/activate'" >> ~/.bashrc
    echo "Congrats :) venv has been created!"
else
    echo "Oh no :( There was an error ..."
fi
