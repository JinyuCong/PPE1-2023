# Journal de Jinyu
## modification de 3 Octobre : J'ai appris comment tirer les fichiers de mon répertoire et les mettre dans ma branche 'main'. Et pousser les fhichiers locals vers le répertoire de github. J'ai appris en même temps comment commenter une modification avec la commande 'commit' et 'add'. 

## Modification de 10 Octobre (séance 3): Pendant ce cours, j'ai appris comment annuler les modifications apportées aux fichiers locaux dans Git, ainsi que comment ajouter des balises (tags) aux fichiers sur GitHub et comment les retirer.

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

## Modification de 10/10 : 

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