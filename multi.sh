#!/bin/bash

affichagemulti()
{
tab=('' 'rock' 'paper' 'scissors' 'Quit')
echo -e "        \033[94m+═════════════════════════════════════+\033[0m"
echo -e "        \033[94m|\033[0m              1-\033[92m ${tab[1]}   \033[0m             \033[94m|\033[0m"
echo -e "      \033[94m  +═════════════════════════════════════+\033[0m"
echo -e "       \033[94m |\033[0m              2-\033[92m ${tab[2]}   \033[0m            \033[94m|\033[0m" 
echo -e "      \033[94m  +═════════════════════════════════════+\033[0m"
echo -e "      \033[94m  |\033[0m              3-\033[92m ${tab[3]}   \033[0m         \033[94m|\033[0m"
echo -e "      \033[94m  +═════════════════════════════════════+\033[0m\n"
read -p"$fname Choice: "  -n 1 choix1
echo -e "\n"
read -p"$sname Choice: " -n 1 choix2
}
endpartiemulti()
{
# printf "\033c"
echo -e "\n          \033[31m<═══════════════════════════════>\033[0m"
echo -e "                 END OF THE PARTIER"
if [[ $scor1 > $scor2 ]];then
		echo -e "         Congratulation \033[93m$fname\033[0m your Score is $scor1"
	elif [[ $scor2 > $scor1 ]];then
		echo -e "         Congratulation \033[36m$sname\033[0m your Score is $scor2"
fi 
echo -e "          \033[31m<═══════════════════════════════>\033[0m"
}

multix()
{
scor1=0
scor2=0
echo -e "\n                      \033[34mMULTIPLAYER\033[0m"	
echo -e "        \033[94m+═════════════════════════════════════+\033[0m\n"
echo -e "\n"
read -p"Name of first player: "  fname
read -p"Name of second player: " sname

if [[ $fname == $sname ]];then
		. solo.sh
		errornom
else
	echo -e "\nReady to play Shifumi? Here we go!"
	score=0
	until  [[ $scor2 == $Valc ]] || [[ $scor1 == $Valc ]];
		do
			. affi.sh
			affichagemulti
			choixmulti
			echo -e "\n> Score $fname: $scor1 \n"
			echo -e "> Score $sname: $scor2"
		done
	endpartiemulti
fi
}

conditionmilti()
{
. rockmulti.sh
	if [[ $choix1 == 1 ]];then
		rockmulti
		elif [[ $choix1 == 2 ]]; then
			papermulti
		elif [[ $choix1 == 3 ]]; then
			scissorsmulti
fi
}

choixmulti()
{
if [[ $choix1 =~ [1-3] ]] && [[ $choix2 =~ [1-3] ]];then
		conditionmilti
	else 
		. man.sh
		errornum
fi
}
