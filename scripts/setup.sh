#!/bin/bash

# Enable admin privilege to user
echo "Granting SU access to wheel group..."
sed -i 's/^#\s*\(%wheel\s+\ALL=(ALL:ALL)\s\+ALL\)/\1/' /etc/sudoers

# Create user
read -p "Enter username: " USERNAME
useradd -m -G wheel -s /bin/bash ${USERNAME}
passwd ${USERNAME}
# usermod -d /home/lichi -m ${USERNAME}

# Clean /home partition remains
# cd /home/lichi
# cp -v projects/scrips/clean-home.sh ./
# clear
# ./clean-home.sh
# echo "Deleting cleanup script..."
# rm clean-home.sh

# Logout of root
exit
