# GNOME Settings and Tweaks
This document acts as a future reference for me and a tracker to keep most of my significant GNOME configurations.

### Contents
- [GNOME Settings and Tweaks](#gnome-settings-and-tweaks)
   * [Settings](#settings)
      + [Keybindings](#keybindings)
      + [Configuration](#configuration)
   * [Extensions](#extensions)

## Settings
### Keybindings
**Unset shortcuts for launching "favorite apps"**
```bash
gsettings set org.gnome.shell.keybindings switch-to-application-1 "[]"
gsettings set org.gnome.shell.keybindings switch-to-application-2 "[]"
gsettings set org.gnome.shell.keybindings switch-to-application-3 "[]"
gsettings set org.gnome.shell.keybindings switch-to-application-4 "[]"
gsettings set org.gnome.shell.keybindings switch-to-application-5 "[]"
gsettings set org.gnome.shell.keybindings switch-to-application-6 "[]"
gsettings set org.gnome.shell.keybindings switch-to-application-7 "[]"
gsettings set org.gnome.shell.keybindings switch-to-application-8 "[]"
gsettings set org.gnome.shell.keybindings switch-to-application-9 "[]"
```
**Switch to workspace by number**
```bash
gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-1 "['<Super>1']"
gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-2 "['<Super>2']"
gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-3 "['<Super>3']"
gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-4 "['<Super>4']"
gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-5 "['<Super>5']"
gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-6 "['<Super>6']"
gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-7 "['<Super>7']"
gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-8 "['<Super>8']"
gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-9 "['<Super>9']"
```
**Move window to workspace**
```bash
gsettings set org.gnome.desktop.wm.keybindings move-to-workspace-1 "['<Shift><Super>1']"
gsettings set org.gnome.desktop.wm.keybindings move-to-workspace-2 "['<Shift><Super>2']"
gsettings set org.gnome.desktop.wm.keybindings move-to-workspace-3 "['<Shift><Super>3']"
gsettings set org.gnome.desktop.wm.keybindings move-to-workspace-4 "['<Shift><Super>4']"
gsettings set org.gnome.desktop.wm.keybindings move-to-workspace-5 "['<Shift><Super>5']"
gsettings set org.gnome.desktop.wm.keybindings move-to-workspace-6 "['<Shift><Super>6']"
gsettings set org.gnome.desktop.wm.keybindings move-to-workspace-7 "['<Shift><Super>7']"
gsettings set org.gnome.desktop.wm.keybindings move-to-workspace-8 "['<Shift><Super>8']"
gsettings set org.gnome.desktop.wm.keybindings move-to-workspace-9 "['<Shift><Super>9']"
```
**Close windows using `Super+W` as well as `Alt+F4`**
```bash
gsettings set org.gnome.desktop.wm.keybindings close "['<Alt>F4', '<Super>W']"
```
**Switch windows using `Super+C` as well as `Alt+Tab`**
```bash
gsettings set org.gnome.desktop.wm.keybindings switch-windows "['<Super>c', '<Alt>Tab']"
```
**Launch file manager program in home folder**
```bash
gsettings set org.gnome.settings-daemon.plugins.media-keys home "['<Super>e']"
```
**Open notification list using `Super+Shift+N`**
```bash
gsettings set org.gnome.shell.keybindings toggle-message-tray "['<Shift><Super>n']"
```
**Set `Compose Key` to `Menu` and "alternative characters" (3rd level) to `Right Super`**
```bash
gsettings set org.gnome.desktop.input-sources xkb-options "['lv3:rwin_switch', 'compose:menu']"
```

### Configuration
**Set text scaling to 125% to help with readability**
```bash
gsettings set org.gnome.desktop.interface text-scaling-factor "1.25"
```
**Disable middle-click paste from primary selection**
```bash
gsettings set org.gnome.desktop.interface gtk-enable-primary-paste "false"
```
**Disable mouse acceleration**
```bash
gsettings set org.gnome.desktop.peripherals.mouse accel-profile "'flat'"
```
**Set touchpad clicks to taps as well as "area" buttons**
```bash
gsettings set org.gnome.desktop.peripherals.touchpad click-method "'area'"
```
**Enable resizing with right click when modifier key is held down**
```bash
gsettings set org.gnome.desktop.wm.preferences resize-with-right-button "false"
```
**Allow volume amplification over 100%**
```bash
gsettings set org.gnome.desktop.sound allow-volume-above-100-percent true
```
**Workspaces on all displays**
```bash
gsettings set org.gnome.mutter workspaces-only-on-primary "false"
```
**Disable dynamic workspaces**
```bash
gsettings set org.gnome.mutter dynamic-workspaces "false"
```
**Center new windows**
```bash
gsettings set org.gnome.mutter center-new-windows "true"
```
**Set number of workspaces (to 5)**
```bash
gsettings set org.gnome.desktop.wm.preferences num-workspaces "5"
```
**(Cosmetic) Set workspace names to emojis describing them**
```bash
gsettings set org.gnome.desktop.wm.preferences workspace-names "['💻', '📖', '🌐', '💬', '🎞️', '⌛']"
```
**Disable "Hot Corners"**
```bash
gsettings set org.gnome.desktop.interface enable-hot-corners "false"
```

## Extensions
- [[Ubuntu] AppIndicator and KStatusNotifierItem Support](https://extensions.gnome.org/extension/615/appindicator-support/)
- [[fmuellner] Auto Move Windows](https://extensions.gnome.org/extension/16/auto-move-windows/)
- [[Maniacx] Bluetooth Battery Meter](https://extensions.gnome.org/extension/6670/bluetooth-battery-meter/)
- [[eon] Caffeine](https://extensions.gnome.org/extension/517/caffeine/)
- [[Tudmotu] Clipboard Indicator](https://extensions.gnome.org/extension/779/clipboard-indicator/)
- [[alperenelhan] Pano (Broken alternative to Clipboard Indicator)](https://extensions.gnome.org/extension/5278/pano/)
- [[charlesg99] Dash to Panel](https://extensions.gnome.org/extension/1160/dash-to-panel/)
- [[Marcin Jakubowski] Date Menu Formatter](https://extensions.gnome.org/extension/4655/date-menu-formatter/)
- [[dlandau] GSConnect](https://extensions.gnome.org/extension/1319/gsconnect/)
- [[JustPerfection] Just Perfection](https://extensions.gnome.org/extension/3843/just-perfection/)
- [[fmuellner] Launch new instance](https://extensions.gnome.org/extension/600/launch-new-instance/)
- [[Selenium-H] Notification Center (Outdated)](https://extensions.gnome.org/extension/1526/notification-centerselenium-h/)
- [[flexagoon] Rounded Window Corners Reborn](https://extensions.gnome.org/extension/7048/rounded-window-corners-reborn/)
- [[luchrioh] Space Bar](https://extensions.gnome.org/extension/5090/space-bar/)
- [[gnull] Simple Workspaces Bar (Alternative to Space Bar)](https://extensions.gnome.org/extension/6394/simple-workspaces-bar/)
- [[Muhammad Ans] Top Panel Notification Icons Revived](https://extensions.gnome.org/extension/6248/top-panel-notification-icons-revived/)