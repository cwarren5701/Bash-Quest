if [ "$ACTION" = "down" ]; then
    echo "You go back down the mountain."
    cd ../bottom_of_mountain
elif [ "$ACTION" = "climbing" ]; then
    echo "You continue climbing into the clouds"
    cd ../clouds
else 
  echo "Invalid command!"
fi