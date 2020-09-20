#!/bin/bash -e

function init {
    ROOT_DIR=$1
    cd $1
    if [ -f "init.sh" ]; then
        source init.sh
        run
    else
        echo "ERROR! NO $(pwd)/init.sh FOUND!"
        exit 1
    fi
}

function run {
    while true; do
        if [ -f "description.txt" ]; then
            DESCRIPTION="$(cat description.txt)"
            echo "$DESCRIPTION"
            get_input
            sleep 1
        else
            echo "ERROR! NO $(pwd)/description.txt FOUND!"
            exit 1
        fi
    done
}

function get_input {
    read -p "What do you do? " ACTION
    if [ -f "handler.sh" ]; then
        source handler.sh
    else
        echo "ERROR! NO $(pwd)/handler.sh FOUND!" 
        exit 1
    fi
}

DOCS=$(cat doc.txt)

case "$1" in
  run) 
    if [ -d "$2" ]; then
        init "$2"
    else 
      echo "Expected a directory! '$2' is not a directory."
      echo "$DOCS"
      exit 1
    fi;;
  help) echo "$DOCS";;
  *) 
  echo "Invalid command!"; 
  echo "$DOCS";
  exit 1;
esac