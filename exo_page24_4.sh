# établir le classement des lieux les plus cités
for annee in {2016..2018}
do
    echo "l'annee $annee"
    cat Fichiers/$annee/*/ann/* | grep Location | cut -f 3 | uniq -c | sort -r | head -n 10
done 

# trouver les annotations les plus fréquentes pour votre mois de naissance, toutes années confondues.
# mon mois de naissance est mars(03)

# Pour l'instant ça ne marche pas parce que dans les fichiers annotations, le deuxième colomne est 
# comme annotation + les placements des entités, ils sont confondus. Si l'annotation et les placements
# sont séparés je peux les trouver avec les codes suivants: 
for annee in {2016..2018}
do
    cat Fichiers/$annee/03/ann/* | cut -f 2 | uniq -c | sort -r | head -n 1
done 