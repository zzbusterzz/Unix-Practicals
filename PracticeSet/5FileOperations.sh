echo "Enter file to move(Enter path if file not located in different directory from this)"
read filename

file_operation()
{
    if [ -f "$filename" ];
    then
        echo "Enter directory name"
        read directory
        if [ ! -d "$directory" ]; 
        then
            mkdir $directory
        fi
        mv $filename $directory
    fi
}

if [ -f "$filename" ];
then
    file_operation    
else
    MY_PATH="`dirname \"$0\"`" 
    MY_PATH="`( cd \"$MY_PATH\" && pwd )`"
    
    echo "$MY_PATH/$filename"

    if [ -f "$MY_PATH/$filename" ];
    then
        filename= "$MY_PATH/$filename"
        echo "$filename"
        file_operation
    else
        echo "File Doesnt exist"
    fi    
fi
