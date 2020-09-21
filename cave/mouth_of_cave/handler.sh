if [ "$ACTION" = "right" ]; then
    echo "You take the path to the right."
    cd ../tunnel
elif [ "$ACTION" = "left" ]; then
    echo "You take the path to the left."
    cd ../dead_end
elif [ "$ACTION" = "entrance" ]; then
    echo "On second though, you return to the entrance."
    cd ../entrance
else 
  echo "Invalid command!"
fi