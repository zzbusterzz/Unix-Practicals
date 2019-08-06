message1="Fortun1"
message2="Fortun2"
message3="Fortun3"
message4="Fortun4"
message5="Fortun5"
message6="Fortun6"
message7="Fortun7"
message8="Fortun8"
message9="Fortun9"
message10="Fortun10"

pickedNo= shuf -i 1-10 -n 1
echo $pickedNo
pickedNo="message"${pickedNo}
echo "$pickedNo"
