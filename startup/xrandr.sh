#!/bin/bash
# This is a script that I made to arrange the user's monitors on startup.
# Feel free to edit/comment out any parts of this script

# Changes the specified display's resolution.
# Run 'xrandr --listmonitors' on a terminal to see what you need to replace DISPLAY with.
# Feel free to copy and paste this depending on how many displays you have.
xrandr --output DISPLAY --mode WIDTHxHEIGHT --refresh REFRESHRATE

# Changes displays position.
# Change --POSITION to either --left-of, --right-of, --above, or --below.
# THEOTHERDISPLAY is just the other dispkllay that you want to have in comparison to DISPLAY. 
# As I said in the last few comments, yakka yakka on about running xrandr and copying and pasting.
xrandr --output DISPLAY --POSITION THEOTHERDISPLAY

# Rotates the display.
# This could be usefull if you are one of those coder dudes with sideways monitors
# Feel free to copy and paste this depending on how many sideways monitors you have.
xrandr --output DISPLAY --rotate normal,inverted,left,right

# Changes the primary display.
# Not much to say about this.
# Don't feel free to copy and paste this.
xrandr --ouptput DISPLAY --primary

# There are many more features that xrandr has, but I fealt that it made more sense just to do the most convinient/universal ones there are.
# Run 'xrandr --help' to get more info on xrandr commands.
