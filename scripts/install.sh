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
mkdir bin
cd bin/
git clone https://aur.archlinux.org/yay.git
cd yay/
makepkg -si
cd
rm -rf bin

# Install AUR packages for login and window manager
yay -S --needed \
sddm-git \
hyprland-git \
xdg-desktop-portal-hyprland-git \
waybar-hyprland-git \
hyprpaper-git

# Hyprland authentication agent
yay -S --needed polkit-kde-agent

# Hyprland: Expanding functionality tools
yay -S --needed socat

# Wayland QT support
yay -S --needed \
qt5-wayland \
qt6-wayland

# Additional Hyprland packages
yay -S --needed \
kitty \
wlogout \
rofi \
neofetch \
dunst \
network-manager-applet

# Create user directories
yay -S --needed xdg-user-dirs
xdg-user-dirs-update
echo "Successfully created user directories"

# Install base fonts
yay -S --needed \
ttf-ibm-plex \
ttf-ibmplex-mono-nerd \
otf-font-awesome \
noto-fonts \
noto-fonts-cjk \
noto-fonts-emoji \
ttf-liberation

# Install video player and image viewer
yay -S --needed \
mpv \
feh

# Install web browsers
yay -S --needed \
firefox \
chromium

# Install additional tools
yay -S --needed \
yt-dlp \
qbittorrent \

# Install document tools
yay -S --needed \
zathura \
masterpdfeditor-free

# File manager base
yay -S --needed \
thunar \
gvfs \
gvfs-mtp \
thunar-archive-plugin \
thunar-volman \
ntfs-3g

# File manager thumbnail support
yay -S --needed \
tumbler \
ffmpegthumbnailer \
webp-pixbuf-loader \
poppler-glib \
freetype2 \
libgsf

# Archive support
yay -S --needed \
file-roller \
p7zip \
unrar \
unzip \
zip

# Audio Stuff
yay -S --needed \
pipewire \
lib32-pipewire \
wireplumber \
pipewire-audio \
pipewire-alsa \
pipewire-pulse \
pipewire-jack \
lib32-pipewire-jack \
pavucontrol

# Bluetooth
yay -S --needed bluez bluez-utils blueman

# For Screenshot and Screen record
yay -S --needed \
grim \
slurp \
swappy \
xbindkeys \
wf-recorder \
wl-clipboard

# For SDDM theming
yay -S --neded \
qt5-graphicaleffectsa \
qt5-svg \
qt5-quickcontrols2

# Android Debug Bridge
yay -S --needed android-tools libmtp

# Musicbrainz Picard
yay -S --needed \
picard \
chromaprint \
imagemagick

# Music
# yay -S --needed mpd mpc ncmpcpp

# Enable necessary services
sudo systemctl enable sddm.service
sudo systemctl enable bluetooth.service

# Prompt user to reboot to GUI
echo "Reboot now."
