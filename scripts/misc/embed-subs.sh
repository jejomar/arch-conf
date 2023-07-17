#!/bin/bash

# create the "output" folder if it doesn't exist
mkdir -p output

for file in *.srt; do
      mv "$file" "${file%.srt} [DRAMADAY.net].srt"
done

# embedding the subtitles
for file in *.mp4; do
  if [ -f "$file" ]; then
    # extract the filename without the extension
    filename="${file%.*}"
    # run the ffmpeg command and save the output file in the "output" folder
    ffmpeg -i "$file" -i "${filename}.srt" -c copy -c:s mov_text -metadata:s:s:0 language=eng "output/${filename}_soft_english.mp4"
  fi
done
