#!/bin/bash
function ask(){
        echo "What would like to monitor?";
        echo "> 1: Memory"
        echo "> 2: Disk Space"
        echo "> 3: Network"
        echo "> 0: Exit"
        echo "Please input the number:"
        read ans;
        return $ans;
}
function monitor(){
ask
while true; do

        case $ans in
                1)
                        free -m
                        ;;
                2)
                        df -h
                        ;;
                3)
                        netstat
                        ;;
                0)
                        end=True
                        ;;
                *)
                        echo 'Invalid Choice'
                        ;;
        esac
        if [ $end ]
        then
                echo "Exiting"
                break
        fi
ask
done

}

monitor
