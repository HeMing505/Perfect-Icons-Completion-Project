#!/bin/bash
mkdir -p temp/res/drawable-xxhdpi/
cp -rf icons/icons/miui_mod_icons/* temp/res/drawable-xxhdpi/
cp -rf icons/MIUIdefault/default/icons.zip ./
cp -rf icons/MIUIdefault/miui_mod_icons/* temp/res/drawable-xxhdpi/
zip -m -r -9 ./icons.zip ./temp/*  >/dev/null
mv ./icons.zip ./mtz/icons
zip -m -r -9 ./mtz/MIUI_Icons.zip ./mtz/icons  >/dev/null
cp -rf ./mtz/MIUI_Icons.zip ./MIUI_Icons_CI_latest.mtz