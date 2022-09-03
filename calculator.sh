#!/bin/sh
#
clear
echo '
  ▄████▄  ▄▄▄       ██▓     ▄████▄  █    ██   ██▓    ▄▄▄     ▄▄▄█████▓ ▒█████   ██▀███
  ▒██▀ ▀█ ▒████▄    ▓██▒    ▒██▀ ▀█  ██  ▓██▒ ▓██▒   ▒████▄   ▓  ██▒ ▓▒▒██▒  ██▒▓██ ▒ ██▒
  ▒▓█    ▄▒██  ▀█▄  ▒██░    ▒▓█    ▄▓██  ▒██░ ▒██░   ▒██  ▀█▄ ▒ ▓██░ ▒░▒██░  ██▒▓██ ░▄█ ▒
  ▒▓▓▄ ▄██░██▄▄▄▄██ ▒██░   ▒▒▓▓▄ ▄██▓▓█  ░██░ ▒██░   ░██▄▄▄▄██░ ▓██▓ ░ ▒██   ██░▒██▀▀█▄
  ▒ ▓███▀ ▒▓█   ▓██▒░██████░▒ ▓███▀ ▒▒█████▓ ▒░██████▒▓█   ▓██  ▒██▒ ░ ░ ████▓▒░░██▓ ▒██▒
  ░ ░▒ ▒  ░▒▒   ▓▒█░░ ▒░▓  ░░ ░▒ ▒  ░▒▓▒ ▒ ▒ ░░ ▒░▓  ░▒▒   ▓▒█  ▒ ░░   ░ ▒░▒░▒░ ░ ▒▓ ░▒▓░
  ░  ▒  ░ ░   ▒▒ ░░ ░ ▒     ░  ▒  ░░▒░ ░ ░ ░░ ░ ▒  ░ ░   ▒▒     ░      ░ ▒ ▒░   ░▒ ░ ▒
  ░         ░   ▒     ░ ░   ░        ░░░ ░ ░    ░ ░    ░   ▒    ░      ░ ░ ░ ▒    ░░   ░
  ░ ░           ░  ░    ░   ░ ░        ░     ░    ░        ░               ░ ░     ░
              LINUX BASICS 3 OP | Programming exercise | Teemu Homi
'
while true
do

echo -n -e "\nEnter the number 1 into the calculator : " ; read luku1
echo -n "Enter the number 2 into the calculator : " ; read luku2
echo -n -e "\nNow enter the operator + , - , * , /   : " ; read operaattori

case $operaattori in
    +)
    echo "scale=2; $luku1$operaattori$luku2" | bc
    ;;
    -)
    echo "scale=2; $luku1$operaattori$luku2" | bc
    ;;
    \*)
    echo "scale=2; $luku1$operaattori$luku2" | bc
    ;;
    /)
    echo "scale=2; $luku1$operaattori$luku2" | bc
    ;;
    *)
    echo -e "\nYou must enter a number as input, either as an integer or as a floating point number."
    ;;
esac
done
exit 0
