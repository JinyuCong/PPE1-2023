# exercice 1

if [ ! -f "$1" ]\
then
    echo "text2colonne: Pas de fichier donne en argument !"
    exit 1
fi
# exit 1表示退出状态发生错误或未成功完成，0表示成功完成状态
urlfichier=$1

cat "$urlfichier" grep -o -P '\P{Latin}' | tr '[:upper:]' '[:lower:]' | tr 'ÉÊÀÂ' 'éêàâ'> nv_candide.txt
# \P表示unicode的引用
# -P表示Perl正则表达式，和-E差不多
# tr：transtale，用于字符转换。例如 echo "hello" | tr 'el' 'EL' 可将el小写转换为大写


#exercice 2

fichier=$1
TOPN=$2 #optionnel

if [ -z "$2" ]
then
    TOPN=25
else
    TOPN=$2
fi

if ! [[ "$TOPN" =~ [1-9][0-9]* ]]
then
    echo "donner un chiffre"
    exit
fi

cat $fichier | sort | uniq -c | sort -r | head -n $TOPN


# exercice 3

urlfichier=$1
bash exerice1.sh $urlfichier > col1
echo "_" > col2
bash exerceice1.sh $urlfichier >> col2

paste col1 col2


# miniprojet html

echo "<html>
    <head>
        <meta charset=\"UTF-8\">
    </head>
    <body>"

echo "      <table>
                <tr><th>ligne</th><th>URL</th><th>code HTTP</th><th>charset</th></tr>"

while read -r line
do
	code=$(curl -I -L -s -w "%{http_code}" -o /dev/null $line)
	charset=$(curl -I -s -w "%{content_type}" -o /dev/null $line | grep -P -o "charset=\S+" | cut -d "=" -f2)
	echo -e "<tr>
            <td>$counter</td>
            <td>$line</td>
            <td>$code</td>
            <td>$charset</td>
        </tr>" >> script_html.html
	counter=$(expr $counter + 1)
done < $urlfile

echo "      </table>
    </body>
    </html>"