#!/bin/bash

# If "yuzu-ea.AppImage" is created in /home/deck/Applications/ then EmuDeck will automatically use the Early Access (EA) AppImage version
# See /home/deck/.config/EmuDeck/backend/tools/launchers/yuzu.sh to confirm

# Sets path for Yuzu EA AppImage, based on EmuDeck's default install location
YUZUEA_PATH=/home/deck/Applications/yuzu-ea.AppImage

# Downloads latest Yuzu EA from PineappleEA and renames it to yuzu-ea.AppImage
curl -s https://api.github.com/repos/pineappleEA/pineapple-src/releases/latest | jq -r ".assets[0] | .browser_download_url" | wget -qO $YUZUEA_PATH -i -

# Enables AppImage to be executable
chmod +x $YUZUEA_PATH
