echo "Enter your top 3 ice cream"
read icecreams

IFS=' ' read -r -a ADDR <<< "$icecreams"
for i in "${ADDR[@]}"; do
    echo $i
done
