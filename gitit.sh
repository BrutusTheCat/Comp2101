#!/bin/bash

printf "$( git commit )" | { 

	declare -a commitarray
	readarray -t commitarray

	printf "%s\n" "${commitarray[*]}" | {

		modify="modified:"
		let i=j=k=0
		FileType=".sh"
		read -a array

		printf "%s\n" "${array[*]}"
		#Counter=${#array[*]}
		Counter=40  ## `printf "%s\n" "${#array[*]}"`

		while [ $i \< $Counter ]
		do
			printf "bob:  %d, %d  " "$i" "$Counter"
			case $modify in
				${array[$i]}) printf "%s\n" "${array[$i]}" ;; 
#mod[$j]=${array[(($i+1))]}; let "j+=1" ;;
			esac
			ModCount=${#array[*]}
			case $FileType in
				${array[$i]})
					DoNotAdd=0
					while [ $k \< $ModCount ]
					do
						case ${array[$i]} in
							${mod[$k]}) DoNotAdd=1 ;;
						esac
					let "k+=1"
					done
					if ((DoNotAdd < 1))
					then
						NewFile[m]=${array[$i]}
						let "m+=1"
					fi
			esac

		let "i+=1"
		
 		printf "%s\n %s\n" "${mod[*]}" "${NewFile[*]}"  
		done

 		printf "%s\n %s\n" "${mod[*]}" "${NewFile[*]}"  
	 	git add ${mod[*]} ${NewFile[*]}
 		git commit -m "These files were modified: ${mod[*]}, and these are new files being added ${Newfile[*]}"



#case $Gittype in
#	${array[$Counter]}) ##finish
#	*)#nadda

}

}
