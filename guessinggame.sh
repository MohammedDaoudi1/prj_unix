#!/bin/bash

# Fonction principale
guessing_game() {
    # Nombre de fichiers dans le répertoire actuel
    local correct_answer=$(ls -1 | wc -l)

    # Demande initiale à l'utilisateur
    echo "Devinez combien de fichiers sont présents dans le répertoire actuel : "
    while true; do
        # Demander à l'utilisateur de faire une estimation
        read user_guess
        # Vérification de l'estimation
        if [ "$user_guess" -lt "$correct_answer" ]; then
            echo "C'est trop bas! Essayez encore."
        elif [ "$user_guess" -gt "$correct_answer" ]; then
            echo "C'est trop haut! Essayez encore."
        else
            echo "Félicitations! Vous avez deviné le bon nombre de fichiers."
            break
        fi
    done
}

# Appel de la fonction
guessing_game
