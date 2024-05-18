#!/bin/bash

echo "Installing Spicetify"
yay --aur -S spicetify-cli

echo "Fixing permissions for /opt/spotify"
sudo chmod a+wr /opt/spotify
sudo chmod a+wr /opt/spotify/Apps -R

spicetify

echo "If no errors; run 'spicetify backup apply enable-devtools'"
