#! /usr/bin/env bash

#==============================================================
# Program that adds and deletes users and pull information 
# from the system.
#==============================================================

# Check at the beginning that the user is ROOT
[[ "$UID" -ne '0' ]] && { echo 'The user must be root to run the program!'; exit 1; }

# Menu
echo \
"=========Welcome $USER==========
|| 1) Add new user            ||
|| 2) Delete user             ||
|| 3) Show system information ||
|| 4) Exit                    ||
================================"

read -p 'Enter your option: ' menuOption

# Program logic
case "$menuOption" in
	1)
		read -p 'Enter the name of the new user: ' newUserName
		echo 'Adding new user...'
		sleep 1s
		useradd "$newUserName" \
		&& { echo "New user $newUserName added."; exit 0; } \
		|| { echo "Error adding new user $newUserName. Please try again later."; exit 1; }	
	;;

	2)
		read -p 'Enter the name of the user to be deleted: ' userNameDelete
		echo "Deleting user $userNameDelete..."
		sleep 1s
		userdel "$userNameDelete" \
		&& { echo "User $userNameDelete has been successfully deleted."; exit 0; } \
		|| { echo "Error deleting user $userNameDelete. Please try again later."; exit 1; }
	;;

	3)
		echo 'Loading system information...'
		sleep 1s
		lsb_release -a
		exit 0
	;;

	4)
		echo 'Exiting the program...'
		sleep 1s
		exit 0
	;;

	*)
		echo 'Invalid option! Exiting the program...'
		sleep 1s
		exit 1
	;;

esac
