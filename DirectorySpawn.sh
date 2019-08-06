echo "Enter directory name to create"
read directoryname

MY_PATH="`dirname \"$0\"`" 
MY_PATH="`( cd \"$MY_PATH\" && pwd )`"

parentDirectoryname="tmp"

if [ ! -d "$MY_PATH/$parentDirectoryname" ];
then
    mkdir "$MY_PATH/$parentDirectoryname"
fi



if [ ! -d "$MY_PATH/$parentDirectoryname/$directoryname" ];
then
    mkdir "$MY_PATH/$parentDirectoryname/$directoryname"
else
    echo "Direcotry already exists"
fi
