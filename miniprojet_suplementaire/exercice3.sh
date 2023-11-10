nombre_mot=$1 # optionnel

sed "1d" nv_candide.txt > candide1.txt # supprimer la première ligne
sed "$d" nv_candide.txt > candide2.txt # supprimer la dernière ligne

paste candide2.txt candide1.txt > bigramme.txt

if [ $# -eq 1 ]
then
    cat bigramme.txt | sort | uniq -c | sort -r | head -n $nombre_mot
else
    cat bigramme.txt | sort | uniq -c | sort -r | head -n 25
fi