DMINEMAIL="admin@somewhere.com"

#LOG File
LOG="/root/nopassword.lock.log"
STATUS=0
TMPFILE="/tmp/null.mail.$$"
 
echo "-------------------------------------------------------" >>$LOG
echo "Host: $(hostname),  Run date: $(date)" >> $LOG
echo "-------------------------------------------------------" >>$LOG
 
USERS="$(cut -d: -f 1 /etc/passwd)"

echo "Searching for null password..."
for u in $USERS
do
   passwd -S $u | grep -Ew "NP" >/dev/null
   if [ $? -eq 0 ]; then # if so 
     echo "$u" >> $LOG 
     passwd -l $u #lock account
     STATUS=1  #update status so that we can send an email
   fi  
done
echo "========================================================" >>$LOG 
if [ $STATUS -eq 1 ]; then
   echo "Please see $LOG file and all account with no password are locked!" >$TMPFILE
   echo "-- $(basename $0) script" >>$TMPFILE
   mail -s "Account with no password found and locked" "$ADMINEMAIL" < $TMPFILE
#   rm -f $TMPFILE
fi