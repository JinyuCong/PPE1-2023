# Écrire un second script qui lance le script précédent trois fois, une fois pour
# chaque années, en prenant le type d’entité en argument.

# Ce script prend 1 argument qui est le nom de l'entité
entite=$1

if [ $# -ne 1 ]
then
    echo "Veuillez donner l'entité que vous souhiatez chercher."
else
    for a in {2016..2018}   # Ce boucle lance le script précédent 3 fois, chaque fois pour 1 année.
    do
        bash ./exo1_page29_script1.sh $entite $a
    done
fi