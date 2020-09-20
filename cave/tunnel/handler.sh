if [ "$ACTION" = "button" ]; then
    echo -n "You press the button and wait."
    sleep 1
    echo -n "."
    sleep 1
    echo "."
    sleep 1
    echo "DING! The wall next to the button opens revealing an elevator!"
    echo -n "Entering the elevator, you begin to descend."
    sleep 1
    echo -n "."
    sleep 1
    echo "."
    echo "The elevator door opens and you exit."
    cd ../gym
elif [ "$ACTION" = "tunnel" ]; then
    echo "You continue down the tunnel."
    cd ../snoring
elif [ "$ACTION" = "mouth" ]; then
    echo "You return to the mouth of the cave."
    cd ../mouth_of_cave
else 
  echo "Invalid command!"
fi