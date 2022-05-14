#!/bin/bash
# This script is for executing display manager nescecities such as Nitrogen or SLSTATUS
# Feel free to comment out any of these commands.


# This comamnd executes your Desktop Enviornment or Window Manager. This is usefull if you are using a wm like DWM.
# Change DE/WM to whatever DE/WM you use.
# I would reccnd you comment this out if you don't need it. (you probably don't)
exec DE/WM

# This restores your previous Nitrogen wallpaper configuration.
# If you know for a fact you are using nitrogen, then I would reccomend you use this.
# If you happen to use a desktop enviornment like KDE, XFCE4, or Gnome, then I would reccomend you comment this out.
nitrogen --restore 

# This command is meant to execute any thing you want.
# I have mine set up to run slstatus as that is my DWM status bar, but if you don't use any of this stuff, then comment it out.
slstatus
