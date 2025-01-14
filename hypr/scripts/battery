#!/bin/bash

rm -rf /tmp/battery.log /tmp/charging /tmp/pc_tfa_arbk /tmp/charging

while true; do
        BAT0cap=$(cat /sys/class/power_supply/BAT0/capacity)
        BAT1cap=$(cat /sys/class/power_supply/BAT1/capacity)

        ALERT=$(ls -lah /tmp/ | grep alerted | wc -l)
        CHAR=$(ls -lah /tmp/ | grep charging | wc -l)
        STATUSA=$(cat /sys/class/power_supply/BAT0/status)
        STATUSB=$(cat /sys/class/power_supply/BAT1/status)
        TFA=$(ls -lah /tmp/ | grep tfa_arbk | wc -l)

	echo "Current battery [$(date +'%T')] $((($BAT1cap+$BAT0cap) / 2))%" >> /tmp/battery.log

	if [ "$STATUSA" == "Charging" ] || [ "$STATUSB" == "Charging" ];
	then 
		TFA=1
		ALERT=1
		echo "Laptop is charging"
		if [ $CHAR != 1 ]; then
			echo "removing alerts"
			touch /tmp/charging 
			rm /tmp/pc_tfa_arbk /tmp/alerted 2&> /dev/null
		fi
        elif [ 15 -gt $((($BAT1cap+$BAT0cap) / 2)) ] && [ $TFA != 1 ];
	then 
		echo "Suspending"
                touch /tmp/pc_tfa_arbk
                systemctl suspend
	elif [ 25 -gt $((($BAT1cap+$BAT0cap) / 2)) ] && [ $ALERT != 1 ];
	then 
		echo "Alerting"
                touch /tmp/alerted
                notify-send "pc aytfa" "less than 39"
	fi
        sleep 15
done
