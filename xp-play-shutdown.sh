#!/bin/bash

# Avoid playing XP sound when starting service, create the shutdown file instead.

FLAG="/tmp/shutdown.log"

if [[ ! -f $FLAG ]]; then

touch $FLAG

else

mpv --no-video "path/to/Windows XP Shutdown.wav"

sleep 2

fi
