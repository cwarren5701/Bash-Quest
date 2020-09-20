if [ "$ACTION" = "back" ]; then
    echo "You head back the way you came."
    cd ../snoring
elif [ "$ACTION" = "wake" ]; then
    echo "You wake the dragon..."
    sleep 1
    EATEN="$(cat eaten.txt)"
    echo "$EATEN"
    exit 1
elif [ "$ACTION" = "slay" ]; then
    if [ "$HAS_SWORD" = "TRUE" ]; then
        echo "You draw your sword to slay the dragon."
        sleep 1
        WIN="$(cat win.txt)"
        echo "$WIN"
        exit 1
    else
        echo "You attempt to pummel the dragon with your fists!"
        sleep 1
        EATEN="$(cat eaten.txt)"
        echo "$EATEN"
        exit 1
    fi
else 
  echo "Invalid command!"
fi