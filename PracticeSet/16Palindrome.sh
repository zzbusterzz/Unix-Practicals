echo -n "Enter number : "
read n
 
sd=0
 
rev=""

on=$n
 
while [ $n -gt 0 ]
do
    sd=$(( $n % 10 )) # get Remainder 
    n=$(( $n / 10 ))  # get next digit
    # store previous number and current digit in reverse 
    rev=$( echo ${rev}${sd} ) 
done
 
if [ $on -eq $rev ];
then
  echo "Number is palindrome"
else
  echo "Number is NOT palindrome"
fi