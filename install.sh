#!/bin/bash


# Install packages for display servers and display driver support
sudo pacman -S --needed --noconfirm \
xorg-server \
xorg-xwayland \
mesa \
lib32-mesa \
vulkan-intel \
lib32-vulkan-intel \
xf86-video-amdgpu \
vulkan-radeon \
lib32-vulkan-radeon \
libva-mesa-driver \
lib32-libva-mesa-driver \
mesa-vdpau \
lib32-mesa-vdpau

# Install GUI related things
# mkdir bin
# cd bin/
# git clone https://aur.archlinux.org/yay.git
# cd yay/
# makepkg -si
# cd ..
# rm -rf bin

# Create user directories
# sudo pacman -S --needed --noconfirm xdg-user-dirs
# xdg-user-dirs-update
# echo "Successfully created user directories"

# Install AUR packages for login and window manager
# yay -S --needed \
# sddm-git \
# hyprland-git \
# xdg-desktop-portal-hyprland-git \
# waybar-hyprland-git \
# hyprpaper-git
sudo pacman -S --needed --noconfirm \
sddm \
hyprcursor \
hypridle \
hyprland \
hyprlang \
hyprlock \
hyprpaper \
xdg-desktop-portal-hyprland \
xdg-desktop-portal-gtk \
waybar \
polkit-kde-agent \
socat \
qt5-wayland \
qt6-wayland \
kitty \
neofetch \
dunst \
network-manager-applet


# Install base fonts
sudo pacman -S --needed --noconfirm \
ttf-ibm-plex \
ttf-ibmplex-mono-nerd \
otf-font-awesome \
noto-fonts \
noto-fonts-cjk \
noto-fonts-emoji \
ttf-liberation

# Media
sudo pacman -S --needed \
mpv \
feh \
pipewire \
lib32-pipewire \
wireplumber \
pipewire-audio \
pipewire-alsa \
pipewire-pulse \
pipewire-jack \
lib32-pipewire-jack \
pavucontrol


# Install web browsers
sudo pacman -S --needed --confirm \
firefox \
chromium \
vivaldi

# Install additional tools
sudo pacman -S --needed --confirm \
yt-dlp \
qbittorrent \

# Install document tools
# yay -S --needed \
# zathura \
# masterpdfeditor-free

# File manager base
sudo pacman -S --needed --confirm \
thunar \
gvfs \
gvfs-mtp \
thunar-archive-plugin \
thunar-volman \
ntfs-3g \
dosfstools

# File manager thumbnail support
sudo pacman -S --needed --confirm \
tumbler \
ffmpegthumbnailer \
webp-pixbuf-loader \
poppler-glib \
freetype2 \
libgsf

# Archive support
sudo pacman -S --needed --confirm \
file-roller \
p7zip \
unrar \
unzip \
zip

# Bluetooth
sudo pacman -S --needed --noconfirm bluez bluez-utils blueman

# For Screenshot and Screen record
# yay -S --needed \
# grim \
# slurp \
# swappy \
# xbindkeys \
# wf-recorder \
# wl-clipboard

# For SDDM theming
# yay -S --needed \
# qt5-graphicaleffects \
# qt5-svg \
# qt5-quickcontrols2

# Theming
sudo pacman -S --needed --noconfirm \
gtk-engine-murrine \
telegram-desktop

# Android Debug Bridge
sudo pacman -S --needed --noconfirm android-tools libmtp

# Musicbrainz Picard
sudo pacman -S --needed --noconfirm \
picard \
chromaprint \
imagemagick

# Music
# yay -S --needed mpd mpc ncmpcpp

# Neovim plugin setup
sudo pacman -S --needed --noconfirm npm

# AUR Packages
yay -S --aur --needed \
brave-bin \
rofi-lbonn-wayland \
spotify \
nwg-look-bin \
discord_arch_electron \
pcsx2

# Enable necessary services
# sudo systemctl enable sddm.service
# sudo systemctl enable bluetooth.service

# Prompt user to reboot to GUI
echo "Reboot now."
