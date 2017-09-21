#!/bin/bash

seul(){
echo -e "\n"
echo -e "\n                         \033[34mSOLO\033[0m"	
echo -e "        \033[94m+═════════════════════════════════════+\033[0m\n"
read -p"Your name : "   name

echo -e "\nHey \033[36m$name\033[0m ! Ready to play Shifumi? Here we go!"
score=0
pc=0

while [[ $score -lt $Valc ]];do
	. affi.sh
	affichage
	random
	choix
echo -e "\n>Your Score : $score \n"
echo -e ">Computer's Score : $pc" 
done
endpartie

}

solochoix(){
	tab=('' 'solo(sujet)' 'solo vs Computer' 'Menu' )
	echo -e "\n                         \033[34mSOLO\033[0m"	
	echo -e "        \033[94m+═════════════════════════════════════+\033[0m"
	echo -e "\n        \033[94m+═════════════════════════════════════+\033[0m"
	echo -e "        \033[94m|\033[0m            1-\033[92m ${tab[1]}   \033[0m        \033[94m|\033[0m"
	echo -e "       \033[94m |\033[0m            2-\033[92m ${tab[2]}   \033[0m   \033[94m|\033[0m"
	echo -e "      \033[94m  |\033[0m            3-\033[92m ${tab[3]}   \033[0m               \033[94m|\033[0m" 
	echo -e "      \033[94m  +═════════════════════════════════════+\033[0m\n"

read -p"Your choice : "  -n 1 rien
if [[ $rien == 1 ]];then	
	seul
elif [[ $rien == 2 ]]; then
	. rock.sh
	pcvsplayer
fi
}

solo(){
	echo -e "\n                         \033[34mPLAY\033[0m"	
	echo -e "        \033[94m+═════════════════════════════════════+\033[0m"
	tab=('' 'solo' 'Multiplayer' 'score' 'Menu' )
	
	echo -e "\n        \033[94m+═════════════════════════════════════+\033[0m"
	echo -e "        \033[94m|\033[0m              1-\033[92m ${tab[1]}   \033[0m             \033[94m|\033[0m"
	echo -e "       \033[94m |\033[0m              2-\033[92m ${tab[2]}   \033[0m      \033[94m|\033[0m" 
	echo -e "      \033[94m  |\033[0m              3-\033[92m ${tab[3]}   \033[0m            \033[94m|\033[0m"
	echo -e "      \033[94m  |\033[0m              4-\033[92m ${tab[4]}   \033[0m             \033[94m|\033[0m"
	echo -e "      \033[94m  +═════════════════════════════════════+\033[0m\n"
	read -p"Your choice : "  -n 1 choix
if [[ $choix == 1 ]];then	
	solochoix
	elif [[ $choix == 2 ]]; then
		. multi.sh
		multix
	elif [[ $choix == 3 ]]; then
		. scor.sh
		lirescor
fi
}

errornom(){
	echo -e "\n\n   \033[94m¸,ø¤º°°º¤ø,¸¸,ø¤º°°º¤ø,¸,ø¤°º¤ø,¸¸,ø¤º°°º¤ø,¸\033[0m\n"
 	echo -e "                  /!\ERROR/!\ "
	echo -e "        You need to choose different name "
	echo -e "\n   \033[94m¸,ø¤º°°º¤ø,¸¸,ø¤º°°º¤ø,¸,ø¤°º¤ø,¸¸,ø¤º°°º¤ø,¸\033[0m"

	
}

