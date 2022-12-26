#!/bin/bash

# NOTE: Script only works with Arch Linux for the time being

PKG_LIST="PKG.list"
# AUR_LIST="AUR_PKG.list"

PKG_LINES=$(cat $PKG_LIST)
# AUR_LINES=$(cat $AUR_LIST)

# AUR_DIRECTORY="~/Downloads"

# func

# Clone an AUR repository with git then enter downloaded folder 
# and install pkg with makepkg -sri.

# aur_clone () {
#     for LINE in $AUR_LINES
#     do
#         echo "$AUR_LINES"
#         cd ~/Downloads
#         git clone $AUR_LINES
#         # cd into aur dir from end of aur string
#     fi
# }

# Checking that directories exist and creating them + checking git is a valid
# pkg on the system.

# dir_check () {
#     if [[ -d "$AUR_DIRECTORY" ]]; then
#         echo "$AUR_DIRECTORY exists on your filesystem."
#         if [ sudo pacman -Qs | grep -q 'git' ]; then
#             echo "matched"
#         fi
#         else
#             sudo pacman -S git
#     else
#         echo "$AUR_DIRECTORY does not exist on the filesystem, creating now"
#         mkdir $AUR_DIRECTORY
#         dir_check
#     fi
# }

# Install pkg's from seperate line entries in PKG.list via the command pacman -Syu.

pkg_install () {
    for LINE in $LINES
    do
        echo "$PKG_LINES"
        sudo pacman -Syu $PKG_LINES
    done
}

#main

# Echo options to the user then use the read function to get a integer input (1,2,3, etc)

echo "This script presents options to install (and then configure) listed packages"

echo "Options are as follows: /n
    1. Install pkg (listed in PKG.list)"

# read option 2. "2. Install AUR pkg (listed in AUR.list)"

read option

# If option is equal to x then run a predefined function

if [ $option = 1 ]; then
    pkg_install
# elif [ $option = 2]; then
#     dir_check

# Else NaN and then exit

else 
    echo "NAN"
    exit
fi
