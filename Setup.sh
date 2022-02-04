#!/bin/sh

#move to home directory
cd ~

#download and install ailases
git clone https://github.com/TheTrueZeroTwo/DotFiles /home/$USER/ 
chmod +x /home/$USER/dotfile-install.sh
/home/$USER/dotfile-install.sh

#setup home directory
mkdir tools
mkdir git

cd Downloads
mkdir temp
cd ..

cd Documents
mkdir dnd
mkdir notes
mkdir work
mkdir pentest
cd pentest
mkdir HTB
cd ..
cd ..

cd music
mkdir youtube
mkdir local
cd ..

cd Pictures
mkdir wallpapers
mkdir meme
mkdir manga
mkdir Screenshots
mkdir pfp
cd ..

cd Videos
mkdir background
mkdir movies
cd ..

##########

read -p "Would you like to setup network drives? " -n 1 -r
echo
if [[ $REPLY =~ ^[Yy]$ ]]
then
    echo "What is the ip address or the host name?"
    read -p 'location: ' location
    #check if directory exists
    mkdir -p /media/$location
    echo "What is the username?"
    read -p 'Username: ' username
    echo "What is the password?"
    read -p 'Password: ' password
    echo "Is this a windows mount?"
    read -r -p 'CIFS? y/n: ' cifs
 
      case $input in
      [yY][eE][sS]|[yY])
            echo "$location /media/$location cifs username=$username,passwrod=$password,vers=2.0 0 0"
            ;;
      [nN][oO]|[nN])
            echo "$location /media/$location username=$username,passwrod=$password 0 0"
            ;;
      *)
            echo "Invalid input..."
            exit 1
            ;;
     

    
fi
