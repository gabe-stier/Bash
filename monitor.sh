#!/bin/bash
# A function that askes the users what they would like to take a look at. 
function ask(){
        echo "What would like to monitor?";
        echo "> 1: Memory"
        echo "> 2: Disk Space"
        echo "> 3: Network"
        echo "> 0: Exit"
        echo "Please input the number:"
        read ans;
}

# The main function of the code. Interprets what the user has requested
function monitor(){
ask
while true; do

        case $ans in
                1) # Is called if the user wants to see the memory of the machine
                        free -m
                        ;;
                2) # Is called if the user wants to see the disk space of the machine
                        df -h
                        ;;
                3) # Is called if the user wants to see the network connections of the machine
                        netstat
                        ;;
                0) # Is called if the user wants to exit the script
                        end=True
                        ;;
                *) # Is called if the number given is not 0, 1, 2, or 3
                        echo 'Invalid Choice'
                        ;;
        esac
        if [ $end ] # Checks to see if the scripts is to end.
        then
                echo "Exiting"
                break
        fi
ask
done

}

monitor
