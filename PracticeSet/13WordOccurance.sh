echo "Enter file Name"
read filename

if [ ! -f $filename ];
then
    echo "File Does not exist"
else
    echo "Occurance of A : $(tr ' ' '\n' < $filename | grep -c '^A$')"
    echo "Occurance of An : $(tr ' ' '\n' < $filename | grep -c '^An$')"
    echo "Occurance of The : $(tr ' ' '\n' < $filename | grep -c '^The$')"
fi
