#!/bin/bash

FLAG="/tmp/firstboot.log"

if [[ ! -f $FLAG ]]; then
   # Do the boot sound only when it is actually the first boot.
   mpv --no-video "/path/to/Windows XP Startup"
   touch "$FLAG"
else
   # If it's not the first boot and you log back in, play the Logon sound instead.
   mpv --no-video "/path/to/Windows XP Logon Sound"
fi

