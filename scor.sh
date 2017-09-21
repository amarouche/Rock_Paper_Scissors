#!/bin/bash
lirescor(){

echo "<════════════════════════════════════>"
echo "       \033[93m$fname's\033[0m  score : $scor1"
echo "<════════════════════════════════════>"

}

texthelp(){

echo -e "\n                       \033[34mHELP\033[0m"	
echo -e "\n        \033[94m+═════════════════════════════════════+\033[0m"
echo "                       WELCOME"
echo "             The rules of the game are easy"
echo "        You must choose a number between 1 and 3"
echo -e "        \033[94m+═════════════════════════════════════+\033[0m"
}

lirescor(){
echo -e "\n                         \033[34mSCORES\033[0m"	
echo -e "        \033[94m+═════════════════════════════════════+\033[0m"
echo -e "\n                         \033[34mSolo\033[0m"	

echo -e "                 Name : \033[36m$name\033[0m | Score : $score"
echo -e "                 Computer's score : $pc"

echo -e "\n                       \033[34mMultiplayer\033[0m"	
echo -e "                 Name : \033[93m$fname\033[0m | Score : $scor1"
echo -e "                 Name : \033[36m$sname\033[0m | Score : $scor2\n"
echo -e "        \033[94m+═════════════════════════════════════+\033[0m"
}