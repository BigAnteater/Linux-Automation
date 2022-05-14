#!/bin/bash
# This program doesn't do much but set up my startup scripts

# Creates the itExists variable. This is for testing if .profile exists. 1 = yes, 0 = no
itExists=0

# Moves startup folder into ~ folder and makes it hidden.
mv startup/ .startup/ && cp -r .startup/ ~/ 

# Creates the startup variable. I only used this so that I don't have to type out so much stuff.
startup=~/.startup/

# Checks if .profile is existing. If not, $exists will stay at 0. If it does exist, then it changes it to 1.
test -r ~/.profile && itExists=1

# If it doesn't exist, it will create .profile.
if [ $itExists != 1 ]
then
	echo "Looks like .profile don't exist. Creating one now"
	touch ~/.profile
fi

# Adds the startup scripts to .profile
echo -e "bash" $startup"scripts.sh &\nbash "$startup"wm.sh &\nbash "$startup"xrandr.sh\n" > .profile

# "Frontend" whatever the hell that means
echo "Startup scripts succcessfully configured!"
sleep 2s
echo "make sure to edit and configure the scripts in /home/$USER/.startup"
