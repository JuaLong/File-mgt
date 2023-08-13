#!/bin/bash
echo ""
sleep 3
echo "A script to automatic delete a file in folder afta 5 days"

#set the number of days
days=5

#cal the currents date in seconds
current=$(date +%s)

#loop through all files in th current dir
for file in *
do
#check ifthe file is older than X days
if [ -f "$file" ] && [ $(($current - $(date +%s -r "$file"))) -gt $(($days * 24 * 60 * 60)) ]
then
#remove the file
rm "$file"
fi
done
echo ""
sleep 3
name=jualong
echo "Thanks for using $name Script"
