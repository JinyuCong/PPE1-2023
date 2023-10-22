# mettre ce fichier et le dossier "Fichiers" dans la même chemin
# exercices page 29
# exercice 1

entite=$1
annee=$2


if [ $# -ne 2 ]
then
    echo "Ce script prend exactement deux arguments, veuillez donner deux arguments en ordre, l'entité et l'année que vous souhaitez chercher."
else
    count=$(cat Fichiers/$annee/*/ann/* | grep $entite | wc -l)
    echo "En année $annee $entite que vous avez choisi a apparu $count fois"
fi
