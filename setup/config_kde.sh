
[General]
ColorSchemeHash=f13a5f93a8d2186748a87eaf56ec9fcef24073d5
TerminalApplication=alacritty
TerminalService=Alacritty.desktop

kwriteconfig6 --file kdeglobals --group "General" --key TerminalApplication alacritty
kwriteconfig6 --file kdeglobals --group "General" --key TerminalService Alacritty.desktop

kwriteconfig6 --file kwinrc --group "Plugins" --key screenedgeEnabled 1
kwriteconfig6 --file kwinrc --group "NightColor" --key Active true
kwriteconfig6 --file kwinrc --group "NightColor" --key NightTemperature 5000

kwriteconfig6 --file kscreenlockerrc --group "Greeter" --group "LnF" --group "General" --key showMediaControls false
kwriteconfig6 --file plasmashellrc --group "PlasmaViews" --group "Panel 2" --key panelVisibility 1

systemctl --user restart plasma-plasmashell
