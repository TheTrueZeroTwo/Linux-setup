#!/bin/sh

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
            echo "$location /media/$location cifs username=$username,passwrod=$password,vers=2.0 0 0" >> /etc/fstab
            ;;
      [nN][oO]|[nN])
            echo "$location /media/$location username=$username,passwrod=$password 0 0" >> /etc/fstab
            ;;
      *)
            echo "Invalid input..."
            exit 1
            ;;
     

    
fi
