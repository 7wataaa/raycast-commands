#!/bin/bash

# Required parameters:
# @raycast.schemaVersion 1
# @raycast.title touch $HOME/Desktop/${fileName}
# @raycast.mode compact

# Optional parameters:
# @raycast.icon 📝
# @raycast.argument1 { "type": "text", "placeholder": "fileName" }

# Documentation:
# @raycast.description Run "touch $HOME/Desktop/${fileName}"
# @raycast.authorURL https://github.com/7wataaa

if [[ $1 =~ [\\\/:\*\?\"\<\>\|] ]] || [[ $1 =~ ' ' ]]; then
  echo 'Contains invalid characters. \/:*?"<>| (space)'
  exit 1
fi

if [[ $1 == *'.'* ]]; then
  echo "$HOME/Desktop/$1"
  touch "$HOME/Desktop/$1"
else
  echo "$HOME/Desktop/$1.txt"
  touch "$HOME/Desktop/$1.txt"
fi
