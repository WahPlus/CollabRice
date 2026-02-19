# CollabRice
A collaborative Arch Linux desktop rice by me and Fluxdrive.

# NOTE: This rice is intended for Arch Linux. It may not work on other distributions.

## Installation

1. Install the packages `sway`, `greetd`, `greetd-regreet`, `herbstluftwm`, `xorg-server`, `xorg-xinit`, `kitty`, `feh`, `ttf-firacode-nerd`, `fish`, `pkgfile`.
2. Edit the file `/etc/greetd/config.toml` to set `command` (under `[default_session]`) to `sway --config /etc/greetd/sway-config`.
3. Create the file `/etc/greetd/sway-config`:
```
exec "regreet; swaymsg exit"
include /etc/sway/config.d/*
```
4. Enable `greetd.service`.
5. Copy `wallpaper.png`, `herbstluftwm/`, `fish/` into `~/.config`.
