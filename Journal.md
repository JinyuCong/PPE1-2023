# Journal de Jinyu

## modification de 3 Octobre: 

J'ai appris comment tirer les fichiers de mon répertoire et les mettre dans ma branche 'main'. Et pousser les fhichiers locals vers le répertoire de github. J'ai appris en même temps comment commenter une modification avec la commande 'commit' et 'add'. 

## Modification de 10 Octobre (séance 3): 

Pendant ce cours, j'ai appris comment annuler les modifications apportées aux fichiers locaux dans Git, ainsi que comment ajouter des balises (tags) aux fichiers sur GitHub et comment les retirer.

commit 232d507c5469c5791a6ed863c2ce1d17e8cccc82 (HEAD -> main, origin/main)
Author: Cong Jinyu <congtaotao2001@gmail.com>
Date:   Tue Oct 10 20:39:26 2023 +0200

    c'est la bonne version

commit e12b09243d1fc172ac93d76d0871476a71791817 (tag: git_seance3_init)
Author: Cong Jinyu <congtaotao2001@gmail.com>
Date:   Tue Oct 10 20:21:37 2023 +0200

    ok

commit 7caaf5a9ad7f6a9b7bb1a02dbe67576c72f87a1c
Merge: 3ab8ae5 7cd33c5
Author: Cong Jinyu <congtaotao2001@gmail.com>
Date:   Tue Oct 10 20:19:40 2023 +0200

    Ajout section seance 3

## Modification de 10/10 (Les notes sur le cours): 

EXO2
micro oops.md
git add oops.md
git commit -m "une erreur"
git tag -a "Mon premier tag" -m <SHA>

#删除文件
touch oups.md #创建名字叫oups的文件
git rm oups.md #删除文件
git status
git commit -m  "suppression de oups.md"
git push

#已经用push提交上取得文件用git revert
#还没有push提交上取得文件用reset
#reset修改本地还没有提交的代码可以到任意一步
#revert可以修改线上的代码（需要SHA码）到任意一步

## Modification de 16/10 (devoirs à la maison exercices 1 et 2):

Les modifications d'aujourd'hui ont porté sur la création des exercices pour le diaporama, qui se trouvent respectivement aux pages 24, 26 et 29. En faisant des recherches en ligne, j'ai appris comment utiliser une boucle for pour parcourir les données de chaque année.Il a été nécessaire d'écrire une série de scripts pour rechercher des données de types spécifiques dans les fichiers du dossier "Fichiers" ou pour effectuer des recherches et compter les données en fonction des variables fournies par l'utilisateur.

## Modification de 21/10 (devoirs à la maison exercices 1 et 2):

Aujourd'hui, j'ai modifié les devoirs de la page 29 de la quatrième leçon. Au préalable, je n'avais pas compris le sens de "prendre en argument" dans la page 29 de la présentation PowerPoint, c'est pourquoi j'avais placé toutes les variables dans la boucle for sans demander à l'utilisateur quelles années ou quel type de données il voulait afficher.<br>

J'ai aussi appris comment utiliser des instructions "if" pour vérifier si tous les arguments sont fournis. Si l'utilisateur ne fournit pas tous les arguments requis, le script affichera une erreur indiquant : "Vous n'avez pas fourni toutes les variables nécessaires"<br>

En modifiant le script de la semaine dernière, j'ai corrigé la partie de mon devoir qui n'était pas conforme aux exigences de l'énoncé, et j'ai amélioré l'affichage du résultat final. Cela permet à l'utilisateur de mieux spécifier l'année pour laquelle il souhaite des données, et, en cas d'arguments insuffisants de la part de l'utilisateur, de lui indiquer quels arguments sont manquants.

## Modification de 26/10 (devoirs miniprojet exercice 1 et 2):

Cette leçon comporte deux exercices, qui consistent à commencer un mini projet. Le contenu implique la lecture ligne par ligne du fichier fr.txt, puis à scraper le code source du site Web correspondant et à afficher si le site peut être atteint, c'est-à-dire afficher le code d'état de la page : commence par 200, 300, 400 ou 500, ainsi que le format de codage de chaque page : utf-8 ou un autre format. Tout d'abord, nous demandons à l'utilisateur de fournir le chemin du fichier fr.txt en tant qu'argument, puis de vérifier si ce chemin existe et est valide. S'il est valide, nous utilisons une boucle while pour lire chaque ligne du fichier et utilisons la commande curl pour afficher le code source, puis utilisons la commande grep pour extraire les informations souhaitées. Il convient de noter que curl -Ils affiche les en-têtes du site Web, et grep -e -o correspond à la recherche d'une expression régulière et à l'extraction des informations souhaitées, plutôt que de tout le contenu de la page. Enfin, après chaque itération de la boucle, les résultats sont ajoutés au fichier "log.txt" à l'aide de l'opérateur '>>'.

## Modification de 11/11 (miniprojet suplémentaire):

Aujourd'hui, j'ai réalisé un mini-projet supplémentaire. Ces trois questions utilisaient les connaissances des cours précédents, en utilisant la commande "cat" pour compter le nombre d'occurrences de chaque mot dans un article, mais auparavant, il a fallu utiliser la commande "grep" pour séparer chaque mot de l'article sur une ligne distincte pour une manipulation aisée. Pour les arguments optionnels, j'ai utilisé plusieurs instructions "if" pour afficher par défaut 25 mots ou des bigrammes. Ensuite, après avoir cherché comment utiliser la commande "paste", j'ai appris comment créer des bigrammes sans utiliser de boucles. Cette commande permet de concaténer chaque ligne de deux fichiers, formant ainsi des bigrammes.

## Modification de 13/11 (transformer la sortie tableau eb HTML):

Aujourd'hui, dans un script shell, j'ai converti le script de la leçon précédente en un fichier HTML et j'ai affiché le contenu en forme de tableau sur une page web. En particulier, j'ai ajouté ligne par ligne les balises HTML telles que "<html>" et "<body>" dans un fichier nommé script_html.html en utilisant l'opérateur >>. Ensuite, pour le tableau, j'ai simplement ajouté les balises du tableau comme "<tr>" et "<td>" de part et d'autre de chaque contenu de sortie dans la boucle while précédente, et utilisé >> pour les insérer dans le fichier HTML. De cette manière, un fichier HTML complet peut être exécuté dans un navigateur.

## Modification de 20/11 (créer une index avec Bulma):

8e leçon, l’objectif de cette leçon est de créer une page d’accueil index pour un site web. En classe, vous avez seulement appris les commandes HTML les plus basiques, mais avec Bulma, vous pouvez concevoir un site web attrayant sans la base des fichiers de formatage CSS. Dans les devoirs, vous avez conçu un bouton qui, lorsqu’il est cliqué, peut sauter à Tableau, qui est le tableau créé dans la leçon précédente. Ensuite, j’ai écrit l’introduction de ce mini-projet ci-dessous.

## Modification de 27/11 (projet en groupe):

Cette modification consiste à faire le projet en groupe. Qui contient le complément de notre programme de script, aspirer les codes sources de chaque URL trouvé, les contextes ou le mot étudié a apparu, un dump-text qui est le texte nette sans lien de chaque URL, et finalement on a amélioré les tableaux en ajoutant 3 colomnes: aspiration, contexte et dump text. Pour l'instant on a pas formalisé la structure des fichiers et les scripts de programme pour créer le tableau. On va le faire après.

## Modification de 04/12 (projet en groupe: iTrameur):

Aujourd'hui, j'ai effectué les devoirs d'iTrameur et écrit un script qui peut convertir les contextes et les dumps collectés en format XML, facilitant ainsi le traitement par iTrameur. Dans l'ensemble, la méthode est similaire à celle de la conversion en format HTML, où l'on ajoute des balises selon la syntaxe du format de fichier correspondant. Cette fois, il m'a été demandé d'utiliser une boucle "for" pour lire tous les fichiers dans un dossier.