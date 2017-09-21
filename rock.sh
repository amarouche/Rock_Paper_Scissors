#!/bin/bash
pcvsplayer(){
	echo -e "\n"
echo -e "\n                         \033[34mSOLO\033[0m"	
echo -e "        \033[94m+═════════════════════════════════════+\033[0m\n"
read -p"Your name : "   name

echo -e "\nHey \033[36m$name\033[0m ! Ready to play Shifumi? Here we go!"
score=0
pc=0

while [[ $score -lt $Valc ]] && [[ $pc -lt $Valc ]] ;do
	. affi.sh
	affichage
	random
	choix
echo -e "\n>Your Score : $score \n"
echo -e ">Computer's Score : $pc" 
done
endpartie
}

. affi.sh
incrupc(){
	pc=$(($pc + 1))

}

rock(){
if [[ $nom == 1 ]] && [[ $number == 3  ]];then
			echo -e "\n> ${tab[1]} crushes ${tab[3]}" 
			incru
			echo -e "\n\033[5mYou win\033[0m"
	elif [[ $nom == 1 ]] && [[ $number == 2  ]];then
			echo -e "\n> ${tab[2]} covers ${tab[1]}"
			echo -e "\n\033[5mComputer won\033[0m"
			incrupc
			echo -e "You lost"
	else
			echo -e "\n> equality"
			echo -e "\n ${tab[$nom]} VS ${tab[$number]}" 
fi		
}

paper(){
if [[ $nom == 2  ]] && [[ $number == 1  ]];then
			echo -e "\n> ${tab[2]} covers ${tab[1]}" 
			incru
			echo -e "\n\033[5mYou win\033[0m"
			echo -e "\nComputer lost"
	elif [[ $nom == 2  ]] && [[ $number == 3  ]];then
			echo -e "\n> ${tab[3]} cut ${tab[2]}"
			echo -e "\n\033[5mComputer won\033[0m"
			incrupc
			echo -e "\nYou lost"
	else
			echo -e "\n> equality"
			echo -e "\n ${tab[$nom]} VS ${tab[$number]}" 	
fi	
}

scissors(){
if [[ $nom == 3 ]] && [[ $number == 1 ]];then
			echo -e "\n> ${tab[1]} crushes ${tab[3]}"
			echo -e "\n\033[5mComputer won\033[0m"
			echo -e "\nYou lost"
	elif [[ $nom == 3 ]] && [[ $number == 2  ]];then
			echo -e "\n> ${tab[3]} cut ${tab[2]}" 
			incru
			echo -e "\n\033[5mYou win\033[0m"
			echo -e "\nComputer lost"
			incrupc
	else
			echo -e "\n> equality"
			echo -e "\n ${tab[$nom]} VS ${tab[$number]}" 	
fi	
}

