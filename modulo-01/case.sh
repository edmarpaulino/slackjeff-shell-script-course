#! /usr/bin/env bash

read -p 'What is your name? ' name

case "$name" in
	Edmar|edmar)
		echo "Your name is $name!" 
	;;
	Lucas|lucas)
		echo "Your name is $name!" 
	;;
	Luan|luan)
		echo "Your name is $name!" 
	;;
	Anderson|anderson)
		echo "Your name is $name!" 
	;;
	Joaquim) echo "Your name is $name!" ;;
	Plinio) echo "Your name is $name!" ;;
	Oliver) echo "Your name is $name!" ;;
	*) echo 'Your name is not registered'; exit 1 ;;
esac
