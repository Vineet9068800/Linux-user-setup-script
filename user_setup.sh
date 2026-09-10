#!/bin/bash
echo "enter the username to create:"
read username
echo "You entered: $username"
useradd $username
mkdir /home/$username/projects
chown $username:$username /home/$username/projects
