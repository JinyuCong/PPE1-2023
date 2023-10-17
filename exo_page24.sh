# mettre ce fichier et le dossier "Fichiers" dans la même chemin
# exercices page 24

# Compter le nombre d’annotations par année (2016, 2017 et 2018)
nombre_ann(){
    for annee in {2016..2018}
    do
        find Fichiers/$annee/*/ann/* | wc -l
    done
}



#  limiter ce comptage aux lieux (Location)
nombre_ann_lieu(){
    for annee in {2016..2018}
    do
        find Fichiers/$annee/*/ann/* -type f -exec grep -l "Location" {} + | wc -l
    done 
}

# sauvgarder dans un fichier
nombre_ann >> output_24.txt
echo "-------" >> output_24.txt
nombre_ann_lieu >> output_24.txt


