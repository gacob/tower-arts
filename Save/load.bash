#!/bin/bash

### LOAD SYSTEM ###
# shellcheck disable=SC1091
source ../Data/locale/spanish.bash

load () {
    # shellcheck disable=SC2154
    echo "${text_1[0]}"
    sleep 1
    read -r loading_slot_choice

    # Comprobación si este archivo de guardado existe
    if [[ -e "save_$loading_slot_choice" ]]; then
        echo "${text_1[1]}"
        loading_slot_choice=0
        load
    fi

    # shellcheck disable=SC1090
    source "save_$loading_slot_choice"
}