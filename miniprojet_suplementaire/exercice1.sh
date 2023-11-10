# tapper candide.txt pour urlfichier

urlfichier=$1

if [ $# -ne 1 ]
then
	echo "Un argument attendu exactement."
	exit
else
	if [ -f $urlfichier ] 
	then
		echo "on a bien un fichier"
	else
		echo "on attend un fichier qui existe"
		exit
	fi
fi

grep -oE '\w+' $urlfichier | tr '[:upper:]' '[:lower:]' > nv_candide.txt

