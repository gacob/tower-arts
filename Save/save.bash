#!/bin/bash

# shellcheck disable=SC1091
source ../Data/locale/spanish.bash

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
        echo "${text_1[5]}" "Este archivo ya existe. ¿Deseas sobreescribir?"

    else
        (
        # Introduce tus variables en una nueva línea tal que así:
        echo variable="$variable"

        ) > "save_1.bash"
    fi

}