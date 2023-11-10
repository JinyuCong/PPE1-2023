#tapper nv_candide pour fichier

fichier=$1
nombre_mot=$2 #optionnel

if [ $# -eq 2 ]
then
    cat $fichier | sort | uniq -c | sort -r | head -n $nombre_mot
else
    if [ $# -eq 1 ]
    then
        cat $fichier | sort | uniq -c | sort -r | head -n 25
    else
        echo "On demande au moins 1 argument qui est le chemin du fichier."    
    fi
fi

