#!/bin/bash -e

set -e # Sets the script to exit if an error occurs

# TODO: Add a comment
function init {
    ROOT_DIR="$1" # Reads the first argument to the init function
    cd "$1"
    if [ -f "init.sh" ]; then #TODO: Add a comment
        source init.sh #TODO: Add a comment
        run
    else
        echo "ERROR! NO $(pwd)/init.sh FOUND!"
        exit 1
    fi
}

function run {
    while true; do
        if [ -f "description.txt" ]; then
            DESCRIPTION="$(cat description.txt)" #TODO: Add a comment
            echo "$DESCRIPTION"
            get_input
            sleep 1 #TODO: Add a comment
        else
            echo "ERROR! NO $(pwd)/description.txt FOUND!"
            exit 1
        fi
    done
}

#TODO: Add a comment
function get_input {
    read -p "What do you do? " ACTION #TODO: Add a comment
    if [ -f "handler.sh" ]; then #TODO: Add a comment
        source handler.sh # TODO: Add a comment
    else
        echo "ERROR! NO $(pwd)/handler.sh FOUND!" 
        exit 1
    fi
}

DOCS="$(cat doc.txt)" #TODO: Add a comment

if [ "$1" = "run" ]; then #TODO: Add a comment
    if [ -d "$2" ]; then #TODO: Add a comment
        init "$2"
    else 
      echo "Expected a directory! '$2' is not a directory."
      echo "$DOCS"
      exit 1
    fi
elif [ "$1" = "help" ]; then #TODO: Add a comment
    echo "$DOCS"
else
    echo "Invalid command!"
    echo "$DOCS"
fi