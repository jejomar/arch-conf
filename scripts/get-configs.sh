# Simple script to copy all files that needed to be backed up.

PROJ_DIR=$HOME/projects/
CONFIG_DIR=$PROJ_DIR/dotfiles/.config
LOCALSHARE_DIR=$PROJ_DIR/dotfiles/.local/share
LOCALBIN_DIR=$PROJ_DIR/dotfiles/.local/bin
HOMECONF=$PROJ_DIR/dotfiles/

# Get configs from root of $HOME directory.
# If you want to add files, just add them using the --include option
cp -v $HOME/.bashrc $HOMECONF
cp -v $HOME/.vimrc $HOMECONF

# Get folders that will be backed up

rsync -av $HOME/.config/cava $CONFIG_DIR/
rsync -av $HOME/.config/dunst $CONFIG_DIR/
rsync -av $HOME/.config/easyeffects $CONFIG_DIR/
rsync -av $HOME/.config/hypr $CONFIG_DIR/
rsync -av $HOME/.config/kitty $CONFIG_DIR/
rsync -av $HOME/.config/mpd $CONFIG_DIR/
rsync -av $HOME/.config/ncmpcpp $CONFIG_DIR/
rsync -av $HOME/.config/sddm $CONFIG_DIR/
rsync -av $HOME/.config/starship $CONFIG_DIR/
rsync -av $HOME/.config/swappy $CONFIG_DIR/
rsync -av $HOME/.config/tofi $CONFIG_DIR/
rsync -av $HOME/.config/vifm $CONFIG_DIR/
rsync -av $HOME/.config/waybar $CONFIG_DIR/
rsync -av $HOME/.config/wlogout $CONFIG_DIR/
rsync -av $HOME/.icons $HOMECONF/
rsync -av $HOME/.local/bin $LOCALBIN_DIR/
rsync -av $HOME/.local/share/applications $LOCALSHARE_DIR/
rsync -av $HOME/.themes $HOMECONF/
rsync -av --exclude 'watch_later' $HOME/.config/mpv $CONFIG_DIR/
