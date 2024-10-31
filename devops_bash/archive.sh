#!/bin/bash

# Vérifie qu'un répertoire est fourni en argument
if [ -z "$1" ]; then
    echo "Erreur : veuillez fournir le nom du répertoire à archiver."
    exit 1
fi

# Créer une archive du répertoire donné
DOSSIER=$1
ARCHIVE=$1.tar
tar -cf $ARCHIVE $DOSSIER

# Afficher la taille de l'archive créée si elle existe
if [ -f $ARCHIVE ]; then
    echo "Taille de l'archive :"
    du -sh $ARCHIVE  # Affiche la taille de l'archive

    echo "Contenu de l'archive :"
    tar -tf $ARCHIVE  # Liste les fichiers dans l'archive
else
    echo "Erreur : l'archive n'a pas pu être créée."
fi

