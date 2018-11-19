#!/bin/bash

UUID=$(cat /proc/sys/kernel/random/uuid)
spacerapp="$HOME/.local/share/applications/spacer-$UUID.desktop"
spacerDockItem="$HOME/.config/plank/dock1/launchers/spacer-w-$UUID.dockitem"
clear

echo "#################################"
echo "# Oh ?! IndoXploit Again? :p"
echo "################################"
echo ""
echo " 1. White";
echo " 2. Black";
echo ""
echo -ne " [?] Pick One / 1 Color : "
read coloring;
echo ""
if [[ $coloring == "1" ]]; then

echo "Make new white separator app..."
if [ ! -f "$HOME/.icons/separator-w.png" ]; then
    echo "Copying separator-w.png to $HOME/.icons/"
    mkdir -p "$HOME/.icons/"
    cp "./separator-w.png" "$HOME/.icons/"
fi

echo "Creating new separator-w.desktop file"
cat <<EOF > $spacerapp
[Desktop Entry]
Version=1.0
Type=Application
Name=Space
Exec=nothing
Icon=$HOME/.icons/separator-w.png
NoDisplay=true
EOF

cat <<EOF > $spacerDockItem
[PlankItemsDockItemPreferences]
Launcher=file://$HOME/.local/share/applications/spacer-$UUID.desktop
EOF

echo "New spacer dock item created with name \"spacer-$UUID\""

elif [[ $coloring == "2" ]]; then
echo "Make new white separator app..."
if [ ! -f "$HOME/.icons/separator-b.png" ]; then
    echo "Copying separator-b.png to $HOME/.icons/"
    mkdir -p "$HOME/.icons/"
    cp "./separator-b.png" "$HOME/.icons/"
fi

echo "Creating new separator-b.desktop file"
cat <<EOF > $spacerapp
[Desktop Entry]
Version=1.0
Type=Application
Name=Space
Exec=nothing
Icon=$HOME/.icons/separator-b.png
NoDisplay=true
EOF

cat <<EOF > $spacerDockItem
[PlankItemsDockItemPreferences]
Launcher=file://$HOME/.local/share/applications/spacer-$UUID.desktop
EOF

echo "New spacer dock item created with name \"spacer-$UUID\""
fi
