#!/bin/bash

# CHeck if a device gets connected or removed. Based on the size retreived, play the correct sound, and update the initial array size.

devices=()
CheckAddRemoveDevice=()

readarray -t devices < <(lsusb)

while [[ true ]]; do

readarray -t CheckAddRemoveDevice < <(lsusb)

if [[ ${#CheckAddRemoveDevice[@]} -gt ${#devices[@]} ]]; then 

	mpv --no-video "/path/to/Windows XP Hardware Insert.mp3"
	
elif [[ ${#CheckAddRemoveDevice[@]} -lt ${#devices[@]} ]]; then

	 mpv --no-video "/path/to/Windows XP Sounds/Windows XP Hardware Remove.mp3"
fi

readarray -t devices < <(lsusb)

sleep 1

done
