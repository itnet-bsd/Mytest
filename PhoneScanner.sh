#!/bin/sh
echo "Welcome to the program. Don't do anything but scan phones. To exit, press ctrl+c"
while read line; do
	matchnumber=$(grep -c "$line" /mnt/c/Users/itnet_bsd/Desktop/Phones4Review.txt)
if [ $matchnumber -gt 0 ]; then
	yesno="Exists"
else
	yesno="Doesn't exist"
fi
	echo "$yesno"
	echo "$line, $yesno" >> /mnt/c/Users/itnet_bsd/Desktop/PhonesScannedOutput.txt
done
