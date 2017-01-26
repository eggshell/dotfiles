# set keyboard repeat rate
xset r rate 200 60

# make sure ~/.Xresources is loaded
xrdb -merge ~/.Xresources

# sets wallpaper
feh --bg-scale /home/eggshell/dotfiles/wallpaper/seattle.jpg

# starts i3wm
exec i3
