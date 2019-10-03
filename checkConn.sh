# !/bin/bash
# This script is a Work in Progress.
# It is designed to check to see if the connection to the machine is a legit connection or not. 
# To check the connection, the script designed to be ran at login. The script will detect if the connection is valid. 
exe=$(echo $?)
ty=$(tty)
if [[ ($ty != /dev/tty*) ]]; then
        str=$(echo $SSH_CONNECTION  | cut -d' ' -f 1)
        pinky > /home/$USER/pinky.txt
        ge=$(grep -q $str /home/$USER/pinky.txt)
        exge=$(echo $?)
fi
if [[ (($TERM  != "linux" ) && ( $exe != "0" ) && ( $exge != "0" )) || ($ty != /dev/tty*) ]]; then
        echo "-----------------------------------------------------------------------------"
        echo "-------------------------------Access Denied---------------------------------"
        echo "-----------------------------------------------------------------------------"
        exit
fi
