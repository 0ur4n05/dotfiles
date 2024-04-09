#!/bin/bash

STATUS="$(playerctl status)"
PL="Playing"
if [[ $STATUS =~ $PL ]]; then 
        playerctl pause
else
        playerctl play
fi

