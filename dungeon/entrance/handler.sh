if [ "$ACTION" = "enter" ]; then
  echo "You enter the cave."
  cd ../mouth_of_cave
elif [ "$ACTION" = "run" ]; then
    echo "Scared of the dragon, you run home to your bed where fall asleep."
    exit 0
else 
  echo "Invalid command!"
fi