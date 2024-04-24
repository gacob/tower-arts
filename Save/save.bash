#!/bin/bash


### Save System ###

save() {
    
    # shellcheck disable=SC2154
    echo "${text_1[2]}" # ¿En qué ranura quieres guardar?
    echo "${text_1[6]}" # "Introduce un número"
    sleep 1
    read -r ranura_guardado

    # Comprobación de la ranura de guardado
    if [[ -e "save_$ranura_guardado" ]]; then
        ranura_guardado=0
        echo "${text_1[5]}" # Este archivo ya existe. ¿Deseas sobreescribir?

    else
        (
        # Introduce tus variables en una nueva línea tal que así:
        echo experience="$experience"
        echo level="$level"
        echo exp_needed="$exp_needed"
        echo exp_base="$exp_base"
        echo hardcore="$hardcore"
        echo first_time="$first_time"
        ) > "save_1.bash"
    fi

}