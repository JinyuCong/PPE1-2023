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
	code=$(curl -Ils $line | grep -e "^HTTP/" | grep -E -o "[0-9]{3}")
	charset=$(curl -Ils $line | grep -E -o "\bcharset.*\b")
	echo $counter"	"$line"	"$code"	"$charset >> "log.txt"
	counter=$(expr $counter + 1)
done < $urlfile