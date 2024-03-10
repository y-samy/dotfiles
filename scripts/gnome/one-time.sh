#!/bin/sh

# Change Super + N to switch to desktop N instead of launching pinned app N
gsettings set org.gnome.shell.keybindings switch-to-application-1  "[]"
gsettings set org.gnome.shell.keybindings switch-to-application-2  "[]"
gsettings set org.gnome.shell.keybindings switch-to-application-3  "[]"
gsettings set org.gnome.shell.keybindings switch-to-application-4  "[]"
gsettings set org.gnome.shell.keybindings switch-to-application-5  "[]"
gsettings set org.gnome.shell.keybindings switch-to-application-6  "[]"

gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-1  "['<Super>1']"
gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-2  "['<Super>2']"
gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-3  "['<Super>3']"
gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-4  "['<Super>4']"
gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-5  "['<Super>5']"
gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-6  "['<Super>6']"


# Clipboard indicator settings
gsettings set org.gnome.shell.extensions.clipboard-indicator next-entry "[]"
gsettings set org.gnome.shell.extensions.clipboard-indicator prev-entry "[]"
gsettings set org.gnome.shell.extensions.clipboard-indicator private-mode-binding "[]"
gsettings set org.gnome.shell.extensions.clipboard-indicator toggle-menu "['<Super>V]"
