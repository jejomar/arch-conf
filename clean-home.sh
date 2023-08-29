# Script to delete all hidden files and folders.

clear

ls .[a-zA-Z_]*

echo "These are the files and folders to be deleted."

read -p "Do you want to continue? [y/n]" choice

if [ "$choice" == 'y' ]
then
    rm -rv .[a-zA-Z_]*
else
    echo "Exiting script..."
fi

