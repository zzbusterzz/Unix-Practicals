echo "Bill Amount"
read amount

echo "Tip is :"
echo "$amount * 0.1" | bc
echo "Total bill is : "
echo "$amount * 0.1 + $amount" | bc
