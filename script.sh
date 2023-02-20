#!/bin/bash

# Should put this in a config file, but feeling lazy.
DIR="$HOME/Library/CloudStorage/Dropbox/$USER"

MESSAGE=$@
DATE=$(date +%Y-%m-%d)
TIME=$(date +%H:%M)
FILEPATH="$DIR/$DATE.md"

# Ensure file exists
touch $FILEPATH

# If non-empty message
if test ! -z "$MESSAGE"; then
  # Append message to file with time
  echo "$TIME - $MESSAGE" >> $FILEPATH
fi

# Print the file
cat $FILEPATH
