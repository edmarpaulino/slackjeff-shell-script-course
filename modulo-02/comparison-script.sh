#! /usr/bin/env bash

# Program variables
higherValue=''
lowerValue=''
i='1'
initialQuantity="$#"

# Program logic
[[ "$#" -eq '0' ]] && { echo 'Any parameter defined!'; exit 1; }

while [[ "$i" -le "$initialQuantity" ]]; do
	[[ "i" -eq '1' ]] && lowerValue="$1" && higherValue="$1"
	[[ "$1" -gt "$higherValue" ]] && higherValue="$1"
	[[ "$1" -lt "$lowerValue" ]] && lowerValue="$1"
	let i++	
	shift
done

echo "The lower value is: $lowerValue"
echo "The higher value is: $higherValue"
echo "Quantity informed: $initialQuantity"
exit 0;
":
