#!/bin/bash

release_file=/etc/os-release
logfile=/var/log/updater.log
errorlog=/var/log/updater_errors.log

check_error_msg() {
    if [ $? -ne 0 ]
    then
        echo "An error occured, please check $errorlog file."
    fi
}

if grep -q "Arch" $release_file
then
   # The host is based on Arch, run pacman update command
   sudo pacman -Syu >> $logfile 2 >>  $errorlog
   check_error_msg
fi

if grep -q "Ubuntu" $release_file || grep -q "Debian" $release_file
then
   # The host is based on Debian / Ubuntu,
   # Run apt version of the command
   sudo apt-get update >> $logfile 2>> $errorlog
   check_error_msg

   sudo apt-get dist-upgrade -y >> $logfile 2>> $errorlog
   check_error_msg 
fi
