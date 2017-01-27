# set keyboar7d repeat rate
xset r rate 200 60

# make sure ~/.Xresources is loaded
xrdb -merge ~/.Xresources

# sets wallpaper
feh --bg-scale /home/eggshell/dotfiles/wallpaper/seattle.jpg

xscreensaver &

# starts i3wm
exec i3
