
# trouver les annotations les plus fréquentes pour votre mois de naissance, toutes années confondues.
# mon mois de naissance est mars(03)

for annee in {2016..2018}
do
    echo "Pour l'annee $annee du mois de mars l'annotation la plus cite est:"
    cat Fichiers/$annee/03/ann/* | cut -f 3 | uniq -c | sort -r | head -n 1
done 
