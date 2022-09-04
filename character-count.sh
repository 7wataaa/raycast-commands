#!/bin/bash

# Required parameters:
# @raycast.schemaVersion 1
# @raycast.title Character count
# @raycast.mode fullOutput

# Optional parameters:
# @raycast.icon 📋

# Documentation:
# @raycast.description A command to count characters in the clipboard. Note: Include line breaks in the character count.
# @raycast.authorURL https://github.com/7wataaa

LANG=ja_JP.UTF-8

str=$(pbpaste -Prefer txt)

length=$(echo "${str}" | wc -m | awk '{print $1}')
LFs=$(echo "${str}" | wc -l | awk '{print $1}')
spaces=$(echo "${str}" | grep -o " " | wc -l | awk '{print $1}')

echo "Length: ${length}"
echo "LFs: ${LFs}"
echo "Spaces: ${spaces}"
echo
echo "Length - LFs         : $((length - LFs))"
echo "Length - LFs - Spaces: $((length - LFs - spaces))"
echo
echo "String: ${str}"