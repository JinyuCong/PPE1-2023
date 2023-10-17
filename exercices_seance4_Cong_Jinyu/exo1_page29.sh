# mettre ce fichier et le dossier "Fichiers" dans la même chemin
# exercices page 29
# exercice 1

les_entites(){
    echo ""
    for a in 2016 2017 2018
    do
        location=$(cat Fichiers/$a/*/ann/* | grep Location | wc -l)
        date=$(cat Fichiers/$a/*/ann/* | grep Date | wc -l)
        hour=$(cat Fichiers/$a/*/ann/* | grep Hour | wc -l)
        orgnization=$(cat Fichiers/$a/*/ann/* | grep Organization | wc -l)
        person=$(cat Fichiers/$a/*/ann/* | grep Person | wc -l)
        product=$(cat Fichiers/$a/*/ann/* | grep Product | wc -l)
        echo $a "location:" $location  "date:" $date "hour:" $hour "orgnization:" $orgnization "person:" $person "product:" $product
    done
}

les_entites





