#!/bin/bash
echo ""

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
name=jualong
echo "Thanks for using $name Script"
