#!/bin/bash

# Définir le seuil d'alerte
UsingWarning=50

# Définir le fichier de log
log_file="CPU_usage_alerts.log"

#Effacer le contenu du fichier log au démarrage
>"$log_file"

while true; do 
#récupérer le pourcentage d'utilisation du CPU dans une variable
UsingCPU=$(mpstat 1 1 | awk 'NR==4 {print 100-$12}')
UsingCPUInt=$(printf "%.0f" $UsingCPU)
#récupérer le pourcentage de d'utilisation de la mémoire systeme
read TotalMemory UsingMemory <<< $(free -m | awk '/Mem:/ {print $2, $3}')

# Calculer l'utilisation du CPU

echo "Le CPU est utilisé a :"$UsingCPUInt"%"
echo "seuil  d'alerte a :"$UsingWarning


# Erreur: PercentageMemoryUsing=$(((UsingMemory/TotalMemory)*100))

#récupération données et calcul de la memoire vive 
PercentageMemoryUsing=$(echo "scale=2; ($UsingMemory / $TotalMemory) * 100" | bc)
echo "Mémoire totale : $TotalMemory MB"
echo "Mémoire utilisée : $UsingMemory MB"
echo "Mémoire VIVE utilisée : $PercentageMemoryUsing %"

if [ "$UsingCPUInt" -gt "$UsingWarning" ]; then
echo "Attention l'utilisation du CPU depasse le seuil d'alerte"
# Enregistrer l'alerte dans le fichier
        echo "$(date): Alerte! L'utilisation du CPU est à $UsingCPUInt%" >> "$log_file"  

else

echo "Le CPU est utilisé normalment"

fi

echo "
........Chargement des nouvelles valeurs........
"

sleep 5

done