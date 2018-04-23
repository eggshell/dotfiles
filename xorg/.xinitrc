# set keyboar7d repeat rate
xset r rate 200 60

# make sure ~/.Xresources is loaded
xrdb -merge ~/.Xresources

# turn off Thinkpad touchpad
synclient TouchpadOff=1

# startup applications
xscreensaver &
redshift-gtk &
nm-applet &

# starts i3wm
exec i3
