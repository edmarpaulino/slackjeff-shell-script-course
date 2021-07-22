#! /usr/bin/env bash

# Download videos from youtube and convert to a specific format.

# Program variables
quality='320k'
audio_format='mp3'
destiny="/home/$USER/Music/downloadyt"

# Initial tests
[[ "$UID" -eq '0' ]] && { echo 'This program cannot be used by the root user'; exit 1; }

[[ -d "$destiny" ]] && cd "$destiny" || { mkdir "$destiny"; cd "$destiny"; }

[[ -d "$destiny" ]] \
&& python3 $(which youtube-dl) --embed-thumbnail --audio-quality "$quality" --audio-format "$audio_format" -x "$@" \
|| { echo "Failed to find directory $destiny"; exit 1; }

