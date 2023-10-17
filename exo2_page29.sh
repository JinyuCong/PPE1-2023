# mettre ce fichier et le dossier "Fichiers" dans la même chemin
# exercices page 29
# exercice 2

for annee in 2016 2017 2018
do
    echo Dans les fichiers de année $annee
    for mois in {01..12}
    do
        echo Dans le mois $mois le lieu le plus cité est:
        cat Fichiers/$annee/$mois/ann/* | grep Location | cut -f 3 | uniq -c | sort -r | head -n 1
    done
    echo "-------------------------------------------------------"
done
