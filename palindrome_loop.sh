# ask text from the user
# reverse the text from end to start
# echo reversed text
# end when the user gives palindrome like madam, racecar

#/bin/sh
#
clear
echo -n " 
 █▀▄ ▄▀▄ █   █ █▄ █ █▀▄ █▀▄ ▄▀▄ █▄ ▄█ ██▀   ▄▀▀ █▄█ ██▀ ▄▀▀ █▄▀ ██▀ █▀▄
 █▀  █▀█ █▄▄ █ █ ▀█ █▄▀ █▀▄ ▀▄▀ █ ▀ █ █▄▄   ▀▄▄ █ █ █▄▄ ▀▄▄ █ █ █▄▄ █▀▄
	LINUX-BASICS 3 OP | Shell Script exercise | Teemu Homi

"
sleep 1
                                                                      
echo -n 'Type a word here to see if it is a palindrome -> '

read vstr
sleep 1
for i in $(seq 0 ${#vstr})
do
	rvstr=${vstr:$i:1}${rvstr}
done
sleep 1
echo "
Your word $vstr is $rvstr on backwards!"

if [ "$vstr" = "$rvstr" ]
then
	sleep 2
	echo "
WHOA! THE WORD YOU GAVE ME IS PALINDROME!
"

else
	sleep 2
	echo "
I'm sorry, but the word you gave me isn't palindrome.
"

fi
