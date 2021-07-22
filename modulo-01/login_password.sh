#! /usr/bin/env bash

# Program variables
user='Edmar'
password='1234'
case ${1} in
	-l|--login)
		read -p 'Login: ' _login
		read -t 5 -sp $'Password: \n' _pass

		if [[ "$_login" = "$user" ]] && [[ "$_pass" -eq "$password" ]]; then
			echo -e '\nCorrect user!'
			echo 'Checking workspace...'
			sleep 1s
		else
			echo -e '\nLogin or password invalid!'
			exit 1;
		fi


		echo \
		"==Welcome $user==
		1) Open Mousepad
		2) Open Kate
		3) Open Konsole
		4) Exit
		=================
		"

		read -p 'Select a option: ' option

		case "$option" in
			1)
				[[ $(type -p mousepad) ]] || {
					read -p 'Application not installed on the system. Do you want to install? [y/n]' answer
					if [[ "$answer" = 'y' ]] || [[ "$answer" = 'yes' ]]; then
						sudo apt install mousepad -y
					elif [[ "$answer" = 'n' ]]; then
						exit 0;
					else
						echo 'Invalid option!'
						exit 1;
					fi
				}
				mousepad &
				clear 
			;;
			2) kate & ;;
			3) konsole & ;;
			4) exit 0 ;;
			*) echo 'Command not found!'; exit 1 ;;
		esac
	;;	

	-h|--help)
		echo "Available options:
				-l | --login	Access the program
				-h | --help		Show this options"
	;;
	
	-b|--backup) echo "The source file is: ${2}"
				 echo "The target file is: ${3}"
	;;
	
	*) echo "Use the -h or --help option for help." ;;
esac
