#!/bin/bash


# Install packages for display servers and display driver support
sudo pacman -S xorg-server xorg-xwayland mesa lib32-mesa vulkan-intel lib32-vulkan-intel xf86-video-amdgpu vulkan-radeon lib32-vulkan-radeon libva-mesa-driver lib32-libva-mesa-driver mesa-vdpau lib32-mesa-vdpau

# Install GUI related things
cd bin/
git clone https://aur.archlinux.org/yay.git
cd yay/
makepkg -si
cd

# Install AUR packages for login and window manager
yay -S sddm-git hyprland-git kitty xdg-desktop-portal-hyprland-git waybar-hyprland-git hyprpaper-git wlogout waylock tofi-git nitch polkit-kde-agent socat

# Install fonts
yay -S noto-fonts noto-fonts-{cjk,emoji} otf-font-awesome ttf-ibm-plex ttf-ibmplex-mono-nerd ttf-iosevka-nerd ttf-liberation ttf-nerd-fonts-symbols ttf-nerd-fonts-symbols-common ttf-opensans

# Install needed apps
yay -S mpv yt-dlp firefox qbittorrent ristretto dunst nwg-look-bin, chromium, masterpdfeditor-free

# File Manager (Thunar)
yay -S gvfs gvfs-mtp thunar-archive-plugin thunar-volman tumbler webp-pixbuf-loader poppler-glib ffmpegthumbnailer freetype2 file-roller p7zip unrar zip unzip ntfs-3g

# Audio Stuff
yay -S pipewire lib32-pipewire wireplumber pipewire-audio pipewire-{audio,alsa,pulse,jack} lib32-pipewire-jack pavucontrol

# Bluetooth
yay -S bluez bluez-utils blueman

# For SDDM theming
yay -S qt5-{graphicaleffects,qt-quickcontrols2,svg}

# For Screenshot and Screen record
yay -S grim slurp swappy xbindkeys wf-recorder wl-clipboard

# Android Debug Bridge
yay -S android-tools libmtp

# Musicbrainz Picard
yay -S picard chromaprint imagemagick

# Music
yay -S mpd mpc ncmpcpp

# Enable necessary services
sudo systemctl enable sddm.service
sudo systemctl enable bluetooth.service


# Prompt user to reboot to GUI
echo "Reboot now."
