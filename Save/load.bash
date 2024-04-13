#!/bin/bash

### LOAD SYSTEM ###

load () {
    echo ¿Qué ranura quieres cargar?
    sleep 1
    read -r loading_slot_choice

    # Comprobación si este archivo de guardado existe
    if [[ -e "save_$loading_slot_choice" ]]; then
        echo Esta ranura no existe.
        loading_slot_choice=0
        load
    fi

    # shellcheck disable=SC1090
    source "save_$loading_slot_choice"
}