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

echo "Length: $(pbpaste -Prefer txt | nkf -w80 | wc -m | awk '{print $1}')"
echo
echo "String: $(pbpaste -Prefer txt)"