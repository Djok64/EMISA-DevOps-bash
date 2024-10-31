#! /bin//bash

#Vérifier que le dossier existe et sinon le créer
if [ -d 'backup' ]; then
	echo "backup existe"
else
	mkdir backup
	echo "backup crée"
fi

#Copie des fichier .py vers backup
cp *.py backup
echo "Fichiers copiés"
