#! /usr/bin/env bash

#===================================================#
#===============Simple backup program===============#
#===================================================#

# Checking if the user is root
[[ "$UID" -eq '0' ]] && { echo 'The root user can not run this program!'; exit 1; }

# Program variables
sourceDirectory="/home/$USER/NEW"
backupName="/home/$USER/NEW.bk"
destinyDirectory="/home/$USER/BACKUP"


# Checking diretories
[[ -d "$sourceDirectory" ]] || { echo "Failed to find $sourceDirectory."; exit 1; }
[[ -d "$destinyDirectory" ]] || { mkdir "$destinyDirectory"; echo "The directory $destinyDirectory has been created."; }

# Performing the backup
case ${1} in
	-b|--backup)
		if tar -cvf "$backupName" "$sourceDirectory"; then
			if mv "$backupName" "$destinyDirectory"; then
				echo 'The file was successfully backed up.'
				exit 0
			else
				echo 'Failed to move the file. Please try again later.'
				exit 1
		else
			echo "Failed to compress the file $sourceDirectory. Please, try again later."
			exit 1
		fi
	;;

	-h|--help)
		echo '==================================================='
		echo '=====================Help menu====================='
		echo '==================================================='
		echo ' -b, --backup		To peform the backup.'
		echo ' -h, --help		To open the help menu.'
		echo '==================================================='
		echo '==================================================='
		echo '==================================================='
		exit 0;
	;;

	*)
		echo 'Use the parameter -h or --help to access the help of this program.'
		exit 1;
	;;
esac
