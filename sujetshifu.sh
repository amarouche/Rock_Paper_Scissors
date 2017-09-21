#!/bin/bash

affisimpe(){
tab=('' 'rock' 'paper' 'scissors')
echo -e "\n              1- ${tab[1]}"
echo -e "              2- ${tab[2]}" 
echo -e "              3- ${tab[3]}\n"
read -p"Your choice : "  -n 1 nom
}

randomsimpl()
{
number=$(( ( RANDOM % 3 ) + 1 ))
}

errorsimple(){
 	echo -e "\n                  /!\ERROR/!\ "
	echo -e "        You need to choose different name "
} 

choixsimpl()
{
	. rocksimple.sh
if [[ $nom =~ [1-3] ]];then
		conditionsimpl
	else 
		errorsimple
fi
}

solosimpl(){
score=0
while [[ $score -lt $Valc ]];do
	affisimpe
	randomsimpl
	choixsimpl
echo -e "\n> Score : $score \n"
done
echo -e "You won!"
echo -e "See you on rock-paper-scissors.\n"
}