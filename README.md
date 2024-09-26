# tuto_outils_tek1
Après la galère du "dump" des PC, vous vous retrouvez tous avec un Ubuntu "vide".
Pour votre année, vous aurez besoin de différents outils comme Emacs, GCC, Valgrind... qui ne sont pas encore installés sur votre machine.

Je vais ici vous montrer comment les installer en quelques commandes et clicks.

## 1. Mise à jour des repos.
Tout d'abord, pour installer les outils, ils vous faut mettre à jour votre PC. Cela se fait en 2 commandes dans votre terminal :
```
sudo apt update
```
Le terminal devrait vous demander votre mot de passe car la commande ``sudo`` est là pour vous donner les permissions administrateur

Puis
```
sudo apt upgrade
```
Là, il vous demandera votre confirmation pour installer les nouveaux packages. Écrivez simplement ``y`` puis ``Entrée``.

## 2. Installation des outils.
Ici, ma source est tout simplement le [github officiel d'Epitech](https://github.com/epitech/dump) avec leur commande d'installation des outils.

Tout d'abord, lancez
```
sudo -i
```
Là encore, le terminal peut vous demander votre mot de passe.
Ensuite,
```
wget -O - "http://dumpscript.epitest.eu" | bash -s
```
Au bout d'un moment, vous devriez avoir tout d'installé.
Cependant, il reste un léger problème.

## 3. Extension Emacs
Quand vous codez en C à EPITECH, le Coding Style demande plusieurs choses. Parmi celles-ci, il vous faut un "header" au début de chaque fichier .c, .h ou Makefile. De plus, votre indentation doit être constituée de tabs faisant 4 espaces.
De base, Emacs ne propose pas cela. Pour ça, j'ai moi-même recréé une extension (qui de base était présente sur le dump Fedora) pour vous mettre l'indentation à 4 espaces ainsi qu'une commande permettant de créer ce header facilement.

Tout d'abord, allez dans "Code" et faites "Download ZIP" :
![image](https://github.com/user-attachments/assets/fe2bbd26-726c-4547-8cc1-dafd447f0149)

Allez ensuite dans votre explorateur de fichier, section "Downloads" et décompressez ce que vous venez de télécharger.
Rentrer dans le dossier, copiez le dossier ``.emacs.d``. Si vous ne le voyez pas, allez dans les paramètres de votre explorateur de fichier et clickez "Show hidden files" :

![image](https://github.com/user-attachments/assets/f8c8faa3-b080-4323-a667-8610bc21622e)

Après avoir copié le ``.emacs.d``, allez dans la section "Home" de l'explorateur de fichier et collez ce dossier.

À présent, lorsque vous serez dans un fichier .c, .h ou un Makefile et que vous faites la combinaison de touche :
``Ctrl + c``, relâcher puis ``h``,
vous aurez un prompt en bas de l'écran demandant un nom de projet ainsi qu'une description de fichier. Entrez ce que vous voulez et le header devrait apparaître. De plus, l'indentation sera configurée pour utiliser 4 espaces.

## FIN
Si vous avez la moindre question, contactez-moi via discord (inkurey22).
