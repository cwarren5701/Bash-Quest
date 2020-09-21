#!/bin/bash -e

set -e # Sets the script to exit if an error occurs

#TODO: Define function called init 
function init {
    ROOT_DIR="$1" #TODO: Reads the first argument to the init function
    cd "$1"
    if [ -f "init.sh" ]; then #TODO: Looks for a file named "init.sh"
        source init.sh #TODO: Run the contents of init.sh in the terminal
        run
    else
        echo "ERROR! NO $(pwd)/init.sh FOUND!"
        exit 1
    fi
}

function run {
    while true; do
        if [ -f "description.txt" ]; then
            DESCRIPTION="$(cat description.txt)" #TODO: Adding variable for DESCRIPTION 
            echo "$DESCRIPTION"
            get_input
            sleep 1 #TODO: Pauses the terminal for 1 second
        else
            echo "ERROR! NO $(pwd)/description.txt FOUND!"
            exit 1
        fi
    done
}

#TODO: Define function for get_input
function get_input {
    read -p "What do you do? " ACTION #TODO: "Displays What do you do?" message and allows you to type an action in.
    if [ -f "handler.sh" ]; then #TODO: Looks for file named 'handler.sh'
        source handler.sh # TODO: Run the contents of handler.sh in terminal
    else
        echo "ERROR! NO $(pwd)/handler.sh FOUND!" 
        exit 1
    fi
}

DOCS="$(cat doc.txt)" #TODO: Defines variable for doc.txt 

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