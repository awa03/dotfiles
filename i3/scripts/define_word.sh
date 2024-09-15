# Prompt the user for a word using zenity
WORD=$(zenity --entry --title="Word Definition" --text="Enter a word:")

if [ -z "$WORD" ]; then
    dunstify "No word entered. Exiting."
    exit 1
fi

# Fetch the definition using WordNet (wn)
DEFINITION=$(wn "$WORD" -over 2>/dev/null)

# Check if definition was found
if [ -z "$DEFINITION" ]; then
    dunstify "No definition found for '$WORD'."
else
    # Display the definition in a notification (it will keep new lines as plain text)
    dunstify "$WORD: $DEFINITION"
fi
