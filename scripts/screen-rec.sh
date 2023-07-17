#!/bin/bash

# Variable for the output filename
filename=$(date +%Y%m%d-%H%M%S.mkv)

# Check if wf-recorder is running
if [ -z $(pgrep wf-recorder) ];
then notify-send "Recording Started"
        wf-recorder -f $HOME/Videos/Recordings/$filename -g "$(slurp)" >/dev/null
        sleep 2
        while [ ! -z $(pgrep -x slurp) ]; do wait; done
        pkill -RTMIN+8 waybar
else
    killall -S SIGINT wf-recorder
    notify-send "Recording Complete"
    while [ ! -z $(pgrep -x wf-recorder) ]; do wait; done
    pkill -RTMIN+8 waybar
fi

