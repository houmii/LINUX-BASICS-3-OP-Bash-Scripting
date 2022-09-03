#!/bin/sh
#
clear
sleep 1
echo '
___________               __         __________               /\
\_   _____/ _____ ______ |  |   ____ \______   \____    ______  |__
 |    __)_ /     \\____ \|  |  / __ \  |   |  _/__  \  /  ___/  |  \
 |        \  | |  \  |_\ \  |__  \_\ ) |   |   \/ __ \_\___ \|      \
/_______  /__|_|  /   ___/____/\____/ /______  /____  /____  \___|  /
        \/      \/|__|                       \/     \/     \/     \/
        LINUX BASICS 3 OP | Programming exercise | Teemu Homi
'
sleep 1
echo -e "\nEnter the name of the employee as 0 if you want to close the program and print the list from the database."
declare -i id=0
while true
do
echo -n -e "\nEnter the name of the employee: " ; read name
    if [[ "$name" == "0" ]]; then
      break
    fi
    id+=1
    sleep 1
    echo "$name;$id" >> employee.csv && echo -e "\nEmployee named $name ID:$id added to the database"
done
echo -e "\nLIST OF EMPLOYEES: \n"

cat employee.csv && echo -e "\n"
