echo "Enter file Name"
read filename

if [ ! -f $filename ];
then
    echo "File Does not exist"
else
    echo "Character Count : "$( wc -c < $filename )
    echo "Line Count : "$( wc -l < $filename )
    echo "Blank space Count : $(grep -c ' ' $filename)"
    echo "Vowel Count : $(tr -dc '[aeiouAEIOU]' < $filename | wc -c)"
    echo "Symbol Count : $(tr -dc [a-zA-Z] < $filename | wc -c)"
fi
