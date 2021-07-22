#! /usr/bin/env bash

i='1'

for fruta in 'Laranja' 'Banana' 'Cajú' 'Maracujá' 'Pitaya' 'Kiwi' 'Caqui'; do
	echo "Fruta $i: $fruta"
	let i++
done
