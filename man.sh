#!/bin/bash
logo()
{ 
echo -e "\n\033[31m______.-----------------------------------------.______\033[0m"
echo -e "\n███████╗██╗  ██╗██╗███████╗██╗   ██╗███╗   ███╗██╗"
echo -e "██╔════╝██║  ██║██║██╔════╝██║   ██║████╗ ████║██║"
echo -e "███████╗███████║██║█████╗  ██║   ██║██╔████╔██║██║"
echo -e "╚════██║██╔══██║██║██╔══╝  ██║   ██║██║╚██╔╝██║██║"
echo -e "███████║██║  ██║██║██║     ╚██████╔╝██║ ╚═╝ ██║██║"
echo -e "╚══════╝╚═╝  ╚═╝╚═╝╚═╝      ╚═════╝ ╚═╝     ╚═╝╚═╝\n"
}

endpartie()
{
# printf "\033c"
echo -e "\n          \033[31m<═══════════════════════════════>\033[0m"
echo -e "                   END OF GAME"
echo -e "             Congratulation your Score is $score"
echo -e "          \033[31m<═══════════════════════════════>\033[0m"
}

quitter(){
	quit=$(($quit + 1))
	echo -e "        \033[31m<════════════════════════════════════>\033[0m"
	echo -e "         Thank you for playing a SHIFUMI :‑D!"
	echo -e "        \033[31m<════════════════════════════════════>\033[0m"
}

# shi()
# {
# echo -e "\n\nReady to play Shifumi? Here we go!\n"
# score=0
# # read -p"Choice your nb: "  -n 1 nb
# # while [ $score -lt $nb ]

# while [[ $score -lt $Valc ]];
# do
# 	. affi.sh
# 	affichage
# 	random
# 	choix
# echo -e "\n> Score : $score \n" 
# done
# endpartie
# # echo -e "\n END OF THE PARTIER "
# # echo -e "\n Congratulation your Score is $score \n"
# }
errornum(){
	echo -e "\n\n   \033[94m¸,ø¤º°°º¤ø,¸¸,ø¤º°°º¤ø,¸,ø¤°º¤ø,¸¸,ø¤º°°º¤ø,¸\033[0m\n"
 	echo -e "                  /!\ERROR/!\ "
	echo -e "      Please enter a number between 1 and 3 "
	echo -e "\n   \033[94m¸,ø¤º°°º¤ø,¸¸,ø¤º°°º¤ø,¸,ø¤°º¤ø,¸¸,ø¤º°°º¤ø,¸\033[0m"
}
 
affmenu(){
	
	tab=('' 'Play' 'Help' 'Quit' )
	echo -e "\033[31m______.-----------------------------------------.______\033[0m"
	echo -e "        \033[94m+═════════════════════════════════════+\033[0m"
	echo -e "        \033[94m|\033[0m              1-\033[92m ${tab[1]}   \033[0m             \033[94m|\033[0m"
	echo -e "       \033[94m |\033[0m              2-\033[92m ${tab[2]}   \033[0m             \033[94m|\033[0m" 
	echo -e "      \033[94m  |\033[0m              3-\033[92m ${tab[3]}   \033[0m             \033[94m|\033[0m"
	echo -e "      \033[94m  +═════════════════════════════════════+\033[0m\n"
	read -p"Your choice : "  -n 1 choix
}
