#!/bin/bash
affichage()
{
tab=('' 'rock' 'paper' 'scissors' 'quit')
echo -e "        \033[94m+═════════════════════════════════════+\033[0m"
echo -e "        \033[94m|\033[0m              1-\033[92m ${tab[1]}   \033[0m             \033[94m|\033[0m"
echo -e "      \033[94m  +═════════════════════════════════════+\033[0m"
echo -e "       \033[94m |\033[0m              2-\033[92m ${tab[2]}   \033[0m            \033[94m|\033[0m" 
echo -e "      \033[94m  +═════════════════════════════════════+\033[0m"
echo -e "      \033[94m  |\033[0m              3-\033[92m ${tab[3]}   \033[0m         \033[94m|\033[0m"
echo -e "      \033[94m  +═════════════════════════════════════+\033[0m\n"

read -p"Your choice : "  -n 1 nom
}
random()
{
# min=1
# max=3
# number=$[( $RANDOM % ($[ $max - $min ] +1 )) + $min ]
# number=$(( ( RANDOM % 3 )  + 1 ))

number=$(( ( RANDOM % 3 ) + 1 ))
}
incru(){
	score=$(($score + 1))
}




condition()
{
	. man.sh
	. rock.sh
	if [[ $nom == 1 ]];then
		rock
	elif [[ $nom == 2 ]]; then
		paper
	elif [[ $nom == 3 ]]; then
		scissors
fi
}

choix()
{
if [[ $nom =~ [1-3] ]];then
		condition
	else 
		. man.sh
		errornum
fi
}