# Make Bourne Shell program that calculates given arguments (operand, operator and operand) like (3 + 4)  and echos calculation with words like “3 multiplied by 4 equals 12” . Operators to handle must be + (plus) - (minus) * (multiply) and / (divide). Remember shell globbing when testing multiply.
# You must use case structure and may use arithmetic extension $((EXPR)) to calculate numbers.

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
