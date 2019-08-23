exec 3> /tmp/output.txt

echo "test" >&3

date >&3

exec 3<&-