#!/bin/bash

userexit=0

while [ $userexit -eq 0 ]
do
	echo "Choose a system command to run:"
	echo "1 - show disk usage"
	echo "2 - show memory usage"
	echo "3 - show logged-in users"
	echo "4 - show system uptime"
	echo "5 - show IP address"
	echo "6 - Exit"
	read -p "Enter your choice(1-6):" choice

  	  case $choice in
	       1) df -h;;
	       2) free -h;;
	       3) who;;
	       4) uptime;;
	       5) hostname -I;;
	       6) userexit=1;;
	       *) echo "Invalid choice choose between 1..6"
	  esac
	echo
	sleep 1
done

echo "Goodbye!"

