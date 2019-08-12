fortuneArray=("Fortune1" "Fortune2" "Fortune3" "Fortune4" "Fortune5" "Fortune6" "Fortune7" "Fortune8" "Fortune9" "Fortune10")
pickedNo=$[ $RANDOM % 10 ]
echo ${fortuneArray[$pickedNo]}
