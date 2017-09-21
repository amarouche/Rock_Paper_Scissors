#!/bin/bash
incru(){
	score=$(($score + 1))
}
conditionsimpl()
{
	. man.sh
	. rocksimple.sh
	case $nom in
		"1")
		rocks ;;
		"2")
		papers ;;
		"3")
		scissorss
		;;
	esac
}

rocks(){
if [[ $nom == 1 ]] && [[ $number == 3  ]];then
			echo -e "\n> ${tab[1]} crushes ${tab[3]}" 
			incru
			
	elif [[ $nom == 1 ]] && [[ $number == 2  ]];then
			echo -e "\n> ${tab[2]} covers ${tab[1]}"
	else
			echo -e "\n\n> equality"
			echo -e "\n ${tab[$nom]} VS ${tab[$number]}" 
fi		
}

papers(){
if [[ $nom == 2  ]] && [[ $number == 1  ]];then
		echo -e "\n> ${tab[2]} covers  ${tab[1]}" 
			incru
		elif [[ $nom == 2  ]] && [[ $number == 3  ]];then
			echo -e "\n> ${tab[3]} cut ${tab[2]}"		
		else
			echo -e "\n\n> equality"
			echo -e "\n ${tab[$nom]} VS ${tab[$number]}" 	
fi	
}

scissorss(){
if [[ $nom == 3 ]] && [[ $number == 1 ]];then
			echo -e "\n> ${tab[1]} crushes ${tab[3]}"
	elif [[ $nom == 3 ]] && [[ $number == 2  ]];then
			echo -e "\n> ${tab[3]} cut ${tab[2]}" 
			incru			
	else
			echo -e "\n\n> equality"
			echo -e "\n ${tab[$nom]} VS ${tab[$number]}" 	
fi	
}