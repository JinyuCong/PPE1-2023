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


echo "<html>" > script_html.html
echo "<head>" >> script_html.html
echo "<meta charset="UTF-8"/>" >> script_html.html
echo "</head>" >> script_html.html
echo "<body>" >> script_html.html
echo "<table border="black solid">" >> script_html.html
echo "<tr><th>numéro_url</th><th>url</th><th>status_code</th><th>charset</th>" >> script_html.html


while read -r line
do
	code=$(curl -I -L -s -w "%{http_code}" -o /dev/null $line)
	charset=$(curl -I -s -w "%{content_type}" -o /dev/null $line | grep -P -o "charset=\S+" | cut -d "=" -f2)
	echo -e "<tr><td>$counter</td><td>$line</td><td>$code</td><td>$charset</td></tr>" >> script_html.html
	counter=$(expr $counter + 1)
done < $urlfile

echo "</table>" >> script_html.html
echo "</body>" >> script_html.html
echo "</html>" >> script_html.html