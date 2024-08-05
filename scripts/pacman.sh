#!/bin/bash

# upgrade everything
sudo pacman -Syu

# uninstall unneeded packages
sudo pacman -Rns $(pacman -Qdtq)

## clear cache
## sudo pacman -S pacman-contrib -> to use paccache
sudo paccache -ruk0
sudo pacman -Sc

yay -Syu
yay -Rns $(pacman -Qdtq)
yay -Sc
