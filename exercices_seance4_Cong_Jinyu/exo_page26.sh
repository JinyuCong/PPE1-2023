# mettre ce fichier et le dossier "Fichiers" dans la même chemin
# exercices page 26

for annee in {2016..2018}
do
    echo "Pour l'année $annee le nombre de Location est:"
    cat Fichiers/$annee/*/ann/* | grep Location | wc -l
done