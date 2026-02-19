# Sudo will be used for privilege elevation by default. If you would like to use another tool, change it here.
ELEV=sudo

$(ELEV) pacman -S --needed --noconfirm sway greetd greetd-regreet herbstluftwm xorg-server xorg-xinit kitty feh ttf-firacode-nerd fish fisher pkgfile
# Set the command in the greetd config
sed -i "s/^command.*\"$/command = \"sway --config /etc/greetd/sway-config\""

$(ELEV) echo $'exec "regreet; swaymsg exit"\ninclude /etc/sway/config.d/*' > /etc/greetd/sway-config

cp -r ./wallpaper.png herbstluftwm fish ~/.config

$(ELEV) systemctl enable --now greetd.service
