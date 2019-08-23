read -p "Enter Two number" no1 no2
read -p "Enter operand" operand

case $operand in
    +)
        echo "Add"
        echo "$no1 + $no2" | bc 
        ;;
    /)
        echo "Divide"
        echo "$(( no1/no2 ))"
        ;;
    -)
        echo "Minus"
        echo "$(( no1 - no2 ))"
        ;;
    %)
        echo "Mod"
        echo "$no1 % $no2" | bc 
        ;;
    *)
        echo "Multiply"
        echo "$no1 * $no2" | bc 
        ;;
esac
