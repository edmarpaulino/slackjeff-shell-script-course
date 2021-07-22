#! /usr/bin/env bash

contadora='0'

while sleep 1s; do
	[[ "$contadora" -eq '30' ]] && echo 'Acabou o tempo' || let contadora++
done

