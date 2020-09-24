if [ "$ACTION" = "up" ]; then
    echo "You start climbing up the mountain."
    cd ../mountain_summit
elif [ "$ACTION" = "sleep" ]; then
    echo "You fall asleep on top your axe."
    cd ../death
else 
  echo "Invalid command!"
fi