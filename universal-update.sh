#!/bin/bash

release_file=/etc/os-release

if grep -q "Arch" $release_file
then
   # The host is based on Arch, run pacman update command
   sudo pacman -Syu
fi

if grep -q "Ubuntu" $release_file || grep -q "Debian" $release_file
then
   # The host is based on Debian / Ubuntu,
   # Run apt version of the command
   sudo apt update
   sudo apt dist-upgrade
fi
