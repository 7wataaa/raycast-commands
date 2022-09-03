#!/bin/bash

# Required parameters:
# @raycast.schemaVersion 1
# @raycast.title Convert mov to mp4 in Desktop
# @raycast.mode fullOutput

# Optional parameters:
# @raycast.icon 🎬
# @raycast.needsConfirmation true

# Documentation:
# @raycast.description Convert mov to mp4 in Desktop
# @raycast.authorURL https://github.com/7wataaa

FFMPEG_PATH="/usr/local/bin/ffmpeg"

WORKING_DIR="$HOME/Desktop"

cd "$WORKING_DIR" || exit 1

if [[ ! -e "$FFMPEG_PATH" ]]; then
  echo "ERROR: $FFMPEG_PATH is not installed."
  exit 1
fi

for file in *
do
  if [[ "$file" == *".mov" ]] && [[ ! -e "${file//.mov/.mp4}" ]]; then
    echo "Converting ${file}..."

    tmp_output_name="${file//.mov/.mp4}"
    # Space characters need to be escaped
    bash -c "$FFMPEG_PATH -i ${file// /\ } ${tmp_output_name// /\ }"
  fi
done

wait