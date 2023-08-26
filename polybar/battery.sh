#!/bin/bash
while :
do
	bat1=$(cat /sys/class/power_supply/BAT1/capacity)
	bat0=$(cat /sys/class/power_supply/BAT0/capacity)

	echo "$((($bat1 + $bat0) / 2))%"
	sleep 20
done

