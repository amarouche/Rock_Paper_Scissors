#!/bin/bash

scor1(){
	scor1=$(($scor1 + 1))
}
scor2(){
	scor2=$(($scor2 + 1))

}
rockmulti(){
if [[ $choix1 == 1 ]] && [[ $choix2 == 3  ]];then
			echo -e "\n> ${tab[1]} crushes ${tab[3]}" 
			scor1
			echo -e "\n\033[5m\033[93m$fname\033[0m wins\033[0m"
			echo -e "\033[36m$sname\033[0m loses"
	elif [[ $choix1 == 1 ]] && [[ $choix2 == 2  ]];then
			echo -e "\n> ${tab[2]} covers ${tab[1]}"
			scor2
			echo -e "\n\033[5m\033[36m$sname\033[0m wins"
			echo -e "\033[93m$fname\033[0m loses"
	else
			echo -e "\n> equality"
			echo -e "\n ${tab[1]} VS ${tab[1]}" 
fi		
}

papermulti(){
if [[ $choix1 == 2  ]] && [[ $choix2 == 1  ]];then s
			echo -e "\n> ${tab[2]} covers ${tab[1]}" 
			scor1
			echo -e "\n\033[5m\033[93m$fname\033[0m wins\033[0m"
			echo -e "\033[36m$sname\033[0m loses"
	elif [[ $choix1 == 2  ]] && [[ $choix2 == 3  ]];then
			echo -e "\n> ${tab[3]} cut ${tab[2]}"
			scor2
			echo -e "\n\033[5m\033[36m$sname\033[0m wins\033[0m"
			echo -e "\033[93m$fname\033[0m loses"
	else
			echo -e "\n> equality"
			echo -e "\n ${tab[2]} VS ${tab[2]}" 	
fi	
}
scissorsmulti(){
if [[ $choix1 == 3 ]] && [[ $choix2 == 1 ]];then
			echo -e "\n> ${tab[1]} crushes ${tab[3]}"
			scor2
			echo -e "\n\033[5m\033[36m$sname\033[0m wins\033[0m"
			echo -e "\033[93$fname\033[0m loses"
	elif [[ $choix1 == 3 ]] && [[ $choix2 == 2  ]];then
			echo -e "\n> ${tab[3]} cut ${tab[2]}" 
			scor1
			echo -e "\n\033[5m\033[93m$fname\033[0m wins\033[0m"
			echo -e "\033[36m$sname\033[0m loses"
	else
			echo -e "\n>equality"
			echo -e "\n ${tab[3]} VS ${tab[3]}" 	
fi	
}