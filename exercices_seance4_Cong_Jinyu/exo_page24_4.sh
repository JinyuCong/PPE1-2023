# établir le classement des lieux les plus cités
for annee in {2016..2018}
do
    echo "l'annee $annee"
    cat Fichiers/$annee/*/ann/* | grep Location | cut -f 3 | uniq -c | sort -r | head -n 10
done 
