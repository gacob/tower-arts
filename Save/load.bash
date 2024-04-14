#!/bin/bash

### LOAD SYSTEM ###
# shellcheck disable=SC1091
source ../Data/locale/spanish.bash

load () {
    # shellcheck disable=SC2154
    echo "${text_1[0]}" # "¿Qué ranura quieres cargar?"
    echo "${text_1[6]}" # "Introduce un número"
    sleep 1
    read -r loading_slot_choice

    # Comprobación si este archivo de guardado existe
    if [[ -e "save_$loading_slot_choice" ]]; then
        echo "${text_1[4]}" # "Cargando...
        loading_slot_choice=0
        # shellcheck disable=SC1090
        source "save_$loading_slot_choice" # Copia las variables guardadas. POR PROBAR
    else
        echo "${text_1[1]}" # "Esta ranura no existe."
        loading_slot_choice=0
        load
    fi

}