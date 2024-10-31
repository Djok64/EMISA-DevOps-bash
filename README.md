### 🐧 Projet de Scripts Bash

📜 Description

Ce projet contient une série de scripts Bash pour l'administration système, tels que la surveillance des ressources (CPU et mémoire), l'archivage de fichiers, et la gestion des journaux. Ces outils sont conçus pour simplifier certaines tâches courantes et automatiser le monitoring des ressources système.

📑 Table des Matières

🎯 Prérequis

⚙️ Installation

🚀 Utilisation

🔧 Fonctionnalités

📝 Exemples

🤝 Contribution

📄 Licence

🎯 Prérequis

Ce projet est compatible avec les systèmes Unix (Linux et macOS). Assurez-vous d'avoir les éléments suivants :


Bash (version 4.0 ou supérieure)

Git (optionnel, pour cloner le dépôt plus facilement)

⚙️ Installation

1. Cloner le dépôt
Pour installer le projet, commencez par cloner le dépôt Git :

``bash
git clone https://github.com/ton_utilisateur/nom_du_projet.git
cd nom_du_projet
``




2. Rendre les Scripts Exécutables
   
Assurez-vous que tous les scripts .sh sont exécutables :

``bash
chmod +x *.sh
``




🚀 Utilisation

Chaque script inclus a une fonction spécifique. Voici comment utiliser le script principal et ses options disponibles.


Exécution du script principal

bash



./script_principal.sh [options]

Options

-a : Active une option spécifique pour le script

-v : Mode verbeux, affiche plus de détails lors de l'exécution


🔧 Fonctionnalités

Les principaux scripts et fonctionnalités incluent :


🔍 Surveillance des ressources : suivi de l'utilisation CPU et mémoire toutes les 5 secondes avec journalisation en cas de dépassement de seuil.

📦 Archivage de fichiers : création d'une archive pour les répertoires spécifiés, avec affichage de la taille de l'archive.

📊 Rapports et journaux : génération de logs pour une analyse ultérieure.

📝 Exemples

Surveillance des ressources CPU/Mémoire

Pour surveiller les ressources système et enregistrer les informations dans un fichier log, exécutez :


bash

./monitoring.sh

Archivage de répertoire

Pour archiver un répertoire et afficher la taille de l'archive créée :


bash


./archive.sh mon_dossier


🤝 Contribution

Les contributions sont toujours bienvenues ! Si vous souhaitez contribuer :


Forkez le projet.

Créez une branche pour votre fonctionnalité (git checkout -b nouvelle-fonctionnalite).

Commitez vos modifications (git commit -m 'Ajout d'une nouvelle fonctionnalité').

Poussez votre branche (git push origin nouvelle-fonctionnalite).

Ouvrez une Pull Request.

Merci de contribuer au développement de ce projet !



✨ Merci d'avoir utilisé ce projet ! N'hésitez pas à le partager et à l'améliorer. 😊






