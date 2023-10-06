#!/bin/bash
sudo flatpak override --filesystem=$HOME/.themes &&
sudo flatpak override --env=GTK_THEME=Adwaita-dark
