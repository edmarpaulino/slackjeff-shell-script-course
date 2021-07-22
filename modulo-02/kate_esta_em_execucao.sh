#! /usr/bin/env bash

program='kate'

until ps -e | grep "$program"; do
	echo "$program is not running..."
	sleep 1s
done

#while ! ps -e | grep "$program"; do
#	echo "$program is not running..."
#	sleep 1s
#done

