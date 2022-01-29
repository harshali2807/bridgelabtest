

function singletCombination (){
	echo "=====Singlet Combination====="
	numOfTimesCoinFlip=10
	headCount=0
	tailCount=0
	for (( i=1; i<=$numOfTimesCoinFlip; i++ ))
	do  
		FLIP=$(($(($RANDOM%10))%2))
		if [[ ${FLIP} -eq 1 ]]
		then
			headCount=$(( $headCount+1 ))
			echo "HEADS"
		else
			tailCount=$(( $tailCount+1 ))
			echo "TAILS"
		fi
	done

	echo "Heads Count ::: "$headCount
	echo "Tails Count ::: "$tailCount
	echo "Number Of Times Coin Flipped ::: "$numOfTimesCoinFlip
	headPercentage=$(( $headCount*100/$numOfTimesCoinFlip ))
	echo "Heads Percentage ::: "$headPercentage
	tailPercentage=$(( $tailCount*100/$numOfTimesCoinFlip ))
	echo "Tails Percentage ::: "$tailPercentage
}

singletCombination