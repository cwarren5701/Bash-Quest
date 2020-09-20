if [ "$ACTION" = "boulder" ]; then
    if [ "$STRENGTH" -gt "10" ]; then
        if [ "$HAS_KEY" = "TRUE" ]; then
            echo "You lift the boulder with ease! Now you're just showing off."
        else
            echo "You lift the boulder with ease! Beneath the boulder, you find a key."
            echo "You take the key and place it in your pocket!"
            HAS_KEY="TRUE"
        fi
    else
        echo "You try to lift the boulder but you're too weak!"
    fi
elif [ "$ACTION" = "back" ]; then
    echo "You return to the Mouth of the Cave."
    cd ../mouth_of_cave
else 
  echo "Invalid command!"
fi