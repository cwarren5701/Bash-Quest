if [ "$ACTION" = "snoring" ]; then
    echo "You slowly approach the snoring..."
    cd ../dragon_lair
elif [ "$ACTION" = "chest" ]; then
    if [ "$HAS_SWORD" = "TRUE" ]; then
        echo "You search the chest again, but it is empty."
    elif [ "$HAS_KEY" = "TRUE" ]; then
        echo "The chest is locked."
        sleep 1
        echo "You take the key from your pocket and unlock the chest."
        sleep 1
        echo "Inside, you find a beautiful sword!"
        HAS_SWORD="TRUE"
    else
        echo "The chest is locked!"
    fi
elif [ "$ACTION" = "tunnel" ]; then
    echo "You head back toward the mouth of the cave."
    cd ../tunnel
else 
  echo "Invalid command!"
fi