if [ "$ACTION" = "weights" ]; then
    if [ "$STRENGTH" -lt "10" ]; then
        echo "You pick up the weights and do a rep!"
        STRENGTH=$(( $STRENGTH + 6 ))
        sleep 1
        echo "Your strength is now $STRENGTH"
    else
        echo "You're feeling pretty strong already, maybe"
        echo "you could go lift some boulders!"
    fi
elif [ "$ACTION" = "elevator" ]; then
    echo -n "You enter the elevator and begin to ascend."
    sleep 1
    echo -n "."
    sleep 1
    echo "."
    sleep 1
    echo "The door opens and you step out into the cave."
    cd ../tunnel
else 
  echo "Invalid command!"
fi