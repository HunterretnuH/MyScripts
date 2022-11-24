#!/bin/sh

if [ $# -lt 1 ]; then
    echo "Records Selected Monitor and virtual audio output.\n Usage: s_record-virtual-screen <file_name> [ <audio_output_index>]"
    exit
fi

FILE_NAME=$1
wf-recorder --audio=alsa_output.platform-snd_aloop.0.analog-stereo.monitor --file="/home/$USER/Documents/Recordings/$FILE_NAME.mp4"
