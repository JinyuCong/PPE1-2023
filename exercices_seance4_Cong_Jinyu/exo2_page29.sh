# mettre ce fichier et le dossier "Fichiers" dans la même chemin
# exercices page 29
# exercice 2

mois=$1
nombre_lieu=$2


if [ $# -ne 2 ] # Si l'on a pas donnée 2 arguments donc afficher une erreur
then
    echo "Ce script prend 2 arguments."
else
    for annee in {2016..2018} # Ce boucle parcour les années, pour chaque année afficher les lieux les plus cités
    do
        echo "Dans les fichiers de année $annee en mois $mois le lieu le plus cité est:"
        cat Fichiers/$annee/$mois/ann/* | grep Location | cut -f 3 | uniq -c | sort -r | head -n $nombre_lieu
        echo "-------------------------------------------------------"
    done
fi
