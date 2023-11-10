#!/usr/bin/env bash
# taper "bash programme/miniprojet.sh urls/fr.txt" pour exécuter ce programme
counter=1
urlfile=$1

if [ $# -ne 1 ]
then
	echo "Un argument attendu exactement." # Si l'argument existe
	exit
else
	if [ -f $urlfile ] 
	then
		echo "on a bien un fichier"
	else
		echo "on attend un fichier qui existe"
		exit
	fi
fi


while read -r line
do
	code=$(curl -I -L -s -w "%{http_code}" -o /dev/null $line)
	charset=$(curl -I -s -w "%{content_type}" -o /dev/null $line | grep -P -o "charset=\S+" | cut -d "=" -f2)
	echo -e "$counter\t$line\t$code\t$charset"
	counter=$(expr $counter + 1)
done < $urlfile