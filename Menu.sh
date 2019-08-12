echo "Enter option to check calorie"
echo "Menu"
echo "1)Pizza" 
echo "2)Burger" 
echo "3)Salad" 
echo "4)Pasta" 
read option
case $option in
	1)
		echo "2550 Calories"
	;;
	2)
		echo "1500 Calories"
	;;
	3)
		echo "750 Calories"
	;;
	4)
		echo "900 Calories"
	;;
esac