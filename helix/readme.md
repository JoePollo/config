# Summary

The intent of this repository is to track the status of Helix configuration, as well as take notes for Pop!_OS configuration.

## Tiling Manager

- Hyprland
  Hyprland is currently highly experimental, and has a warning with not using with Pop!_OS. i3 is touted as tried and true, so this will be my option.

  - i3

  This is the option based off of youtube tutorial by TypeCraft.

### I3 Notes

- Exit i3 with SHIFT+ALT+E
- File explorer with ALT+D
- Fullscreen ALT+F
- Tabbed tiles ALT+W
- Change tiling ALT+E

#### Dependencies

- Picom - smooth graphics
- Polybar - skin for status bar
  - Polybar config.ini goes under /etc/polybar/config.ini
    - Copies are saved under ~/.config/polybar/
  - Add `exec_always killall polybar`
  - Add `exec_always --no-startup-id polybar` to `~/.config/i3/config`
- Feh to add background images

#### Setup

- Edit ~/.config/i3/config to change font

## Shell Multiplexer

Zellij

## Text Editor/IDE

Helix

## JS runtime

Bun

## Markdown Editor

Dprint
