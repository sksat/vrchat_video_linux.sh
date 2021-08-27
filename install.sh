#!/bin/bash

VRC_DIR="${HOME}/.local/share/Steam/steamapps/compatdata/438100/pfx/drive_c/users/steamuser/AppData/LocalLow/VRChat/VRChat"

mv "${VRC_DIR}/Tools/youtube-dl.exe" "${VRC_DIR}/Tools/youtube-dl-orig.exe"
cp ./youtube-dl.sh "${VRC_DIR}/Tools/youtube-dl.exe"
chmod 555 "${VRC_DIR}/Tools/youtube-dl.exe"
