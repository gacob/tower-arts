#!/bin/bash

info_character() {
    echo Estás usando a "$character_name"
    echo "______________________________"
    echo
    echo "$character_description"
    echo
    echo "_________________________________"
    echo 
    echo Vida: "$hp"
    echo Ataque Físico: "$atk_p"
    echo Ataque Mágico: "$atk_m"
    echo Defensa Física: "$def_p"
    echo Defensa Mágica: "$def_m"
    echo Velocidad: "$speed"
    echo Probabilidades de Golpe Crítico: "$crit_r"
    echo Daño Crítico: "$crit_h"
    echo 
    sleep 1
}


default_character() {
    character_template_1
    current_character=1
    character_name=$character_name_1
    character_description=$character_description_1
    hp=$hp_1
    atk_p=$atk_p_1
    atk_m=$atk_m_1
    def_p=$def_p_1
    def_m=$def_m_1
    speed=$speed_1
    crit_r=$crit_r_1
    crit_h=$crit_h_1
}


change_character() {
    list_character=0
    while [[ $list_character -eq 0 ]]; do
        echo ¿Quieres cambiar de personaje?
        echo 1. Cambiar de personaje.
        echo 2. Volver.
        read -r choose_character

        case $choose_character in
            1)  choose_character=0
                list_character=1
                ;;
            2)  choose_character=0
                lobby
                ;;
            *)  choose_character=0
                echo Elige un valor válido
        esac
    done

    
}