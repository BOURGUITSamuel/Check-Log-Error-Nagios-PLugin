#!/bin/bash

# Fonction d'aide détaillée
print_usage() {
    echo "Usage: $0 <chemin_fichier_log> <chaîne_erreur> <seuil_warning> <seuil_critical>"
    echo "Description: Ce script vérifie la présence d'une chaîne d'erreur dans un fichier de log"
    echo "et retourne un code de sortie approprié pour Nagios."
    echo "Arguments:"
    echo "  <chemin_fichier_log>: Chemin absolu du fichier de log à surveiller."
    echo "  <chaîne_erreur>: Chaîne à rechercher dans le fichier de log."
    echo "  <seuil_warning>: Nombre minimal d'occurrences pour déclencher un avertissement."
    echo "  <seuil_critical>: Nombre minimal d'occurrences pour déclencher une alerte critique."
}

# Fonction pour vérifier la présence d'une erreur dans un fichier de log
check_error() {
    local log_file="$1"
    local error_string="$2"
    local warning_threshold="$3"
    local critical_threshold="$4"

    if [ ! -f "$log_file" ]; then
        echo "Le fichier de log $log_file n'existe pas."
        exit 3  # Code de sortie inconnu pour Nagios
    fi

    local error_count=$(grep -B1 "$error_string" "$log_file" | grep -c $(date +"%Y-%m-%d"))

    if [ "$error_count" -ge "$critical_threshold" ]; then
        echo "CRITICAL - Erreur détectée $error_count fois dans le fichier de log."
        exit 2  # Code de sortie pour Nagios : Critical
    elif [ "$error_count" -ge "$warning_threshold" ]; then
        echo "WARNING - Erreur détectée $error_count fois dans le fichier de log."
        exit 1  # Code de sortie pour Nagios : Warning
    else
        echo "OK - Pas d'erreur détectée dans le fichier de log."
        exit 0  # Code de sortie pour Nagios : OK
    fi
}

# Vérifier si les arguments sont corrects
if [ "$#" -ne 4 ]; then
    print_usage
    exit 3  # Code de sortie inconnu pour Nagios
fi

# Appeler la fonction de vérification des erreurs
check_error "$1" "$2" "$3" "$4"
