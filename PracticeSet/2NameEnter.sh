echo "Enter name"
read val
echo $val

echo "Press enter key to exit"

while [[ $val != "" ]] 
do
    read val
    if [[ $val != "" ]];
        then echo "Wrong input, Press enter to exit"
    fi
done
