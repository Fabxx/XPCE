#!/bin/bash

# CHeck if a device gets connected or removed. Based on the size retreived, play the correct sound, and update the initial array size.

devices=()
CheckAddRemoveDevice=()

readarray -t devices < <(lsusb)

while [[ true ]]; do

readarray -t CheckAddRemoveDevice < <(lsusb)

if [[ ${#CheckAddRemoveDevice[@]} -gt ${#devices[@]} ]]; then 

	mpv --no-video "/media/fabx/517454AE65063897/WD 1TB Dati/Game Music Collection/Windows XP Sounds/Windows XP Hardware Insert.mp3"
	
elif [[ ${#CheckAddRemoveDevice[@]} -lt ${#devices[@]} ]]; then

	 mpv --no-video "/media/fabx/517454AE65063897/WD 1TB Dati/Game Music Collection/Windows XP Sounds/Windows XP Hardware Remove.mp3"
fi

readarray -t devices < <(lsusb)

sleep 1

done
