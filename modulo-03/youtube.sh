#! /usr/bin/env bash

youtubeNo='https://www.youtube.com/watch?v=dQw4w9WgXcQ'
youtubeLink='https://www.youtube.com/results?search_query='

case "$#" in 
	0)	echo 'No parameter entered!'
		exit 1
	;;
	
	1)	if [[ "${1}" = '-e' ]]; then
			google-chrome-stable $youtubeNo
		else
			echo 'Parameter not found!'	
			exit 1
		fi
	;;
	
	*)	if [[ "${1}" = '-e' ]]; then
			shift
			search="$@"
			search="${search// /+}"
			google-chrome-stable ${youtubeLink}${search}
		else
			echo 'Parameter not found!'
			exit 1
		fi
	;;
esac
