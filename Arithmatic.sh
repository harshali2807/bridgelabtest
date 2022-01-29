read -p "Enter 1st num: " a
read -p "Enter 2nd num: " b
read -p "Enter 3rd num: " c

declare -A operation
function ArithmaticOperation() {
	val1=$(($1+$2*$3))
	operation[compute1]=${val1}
	echo ${operation[compute1]}
	
	operation[compute2]=$(($1*$2+$3))
	echo ${operation[compute2]}
	
	operation[compute3]=$(($3+$1/$2))
	echo ${operation[compute3]}
	
	operation[compute4]=$(($1%$2+$3))
	echo ${operation[compute4]}
}

function CopyToArray(){
	counter=0
	echo "operation: " ${operation[@]}
	opsArray[((counter++))]=${operation[compute1]}
	opsArray[((counter++))]=${operation[compute2]}
	opsArray[((counter++))]=${operation[compute3]}
	opsArray[((counter++))]=${operation[compute4]}
}

function descendingSort(){
	opsArray=( $(printf "%s\n" ${opsArray[@]} | sort -r ) )
	echo "Descending sorted Array " ${opsArray[@]}
}
function asendingSort(){
	opsArray=( $(printf "%s\n" ${opsArray[@]} | sort ) )
	echo "Asending sorted Array " ${opsArray[@]}
}

ArithmaticOperation $a $b $c
CopyToArray
descendingSort
asendingSort