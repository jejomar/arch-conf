#!/bin/bash

# Create user
read -p "Enter username: " USERNAME
useradd -m -G wheel -s /bin/bash ${USERNAME}
passwd ${USERNAME}

# Logout of root
exit
