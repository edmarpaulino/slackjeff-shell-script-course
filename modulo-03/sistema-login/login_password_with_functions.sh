#! /usr/bin/env sh

# Calling configuration
source 'conf/fileLogin.conf'	# Importing conf file
source 'help-library'			# Importing function file

# Functions
_login(){
	local limit='3'
	local attempts='0'

	while :; do		
		printf '%s' 'Login: '
		read _login
		printf '%s' 'Password: '
		read _pass

		if [ "$_login" = "$user" ] && [ "$_pass" -eq "$password" ]; then
			printf '%b' "\nCorrect user!\n"
			printf '%s' 'Checking workspace...'
			sleep 1s
			clear
			break
		else
			let attempts++
			printf '%b' "\nLogin or password invalid! Remaining attempts: $(( $limit - $attempts ))\n"
			[ "$attempts" -eq "$limit" ] && { printf '%s\n' 'Attempt limit reached!'; exit 1; }
		fi
	done

		PS3='Select an option: '		
		select option in 'Open Mousepad' 'Open Kate' 'Open Konsole' 'Exit'; do
			case "$REPLY" in
				1)
					[ $(type -p mousepad) ] || {
						printf '%s' 'Application not installed on the system. Do you want to install? [y/n]'
						read answer
						if [ "$answer" = 'y' ] || [ "$answer" = 'yes' ]; then
							sudo apt install mousepad -y
						elif [ "$answer" = 'n' ] || [ "$answer" = 'no' ]; then
							exit 0;
						else
							printf '%s' 'Invalid option!'
							exit 1;
						fi
					}
					mousepad &
					clear 
				;;
				2) kate & ;;
				3) konsole & ;;
				4) exit 0 ;;
				*) print '%s' 'Command not found!'; exit 1 ;;
			esac
		done
}

# Command line
case ${1} in
	-l|--login)
			_login		# Calling the function
		;;	

	-h|--help)
			_help		# Calling the external function
			;;
	
#	-b|--backup) echo "The source file is: ${2}"
#				 echo "The target file is: ${3}"
#	;;
	
	*) printf '%b' "Use the -h or --help option for help.\n" ;;
esac
