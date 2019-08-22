echo "Enter file Name"
read filename

if [ ! -f $filename ];
then
    echo "File Does not exist"
else
    if [ ! -f oddLines.txt ];
    then
        echo >> oddLines.txt
    fi
    
    if [ ! -f evenLines.txt ];
    then
        echo >> evenLines.txt
    fi

    linecount=0;

    while IFS= read -r line
    do
        $((lineCount
    done < "$filename"
fi
