#!/bin/bash


info_character() {
    echo "_____________________________"
    echo
    echo Estás usando a "$character_name"
    echo
    echo "______________________________"
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
    character_template_2
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
                list_character=1
                lobby
                ;;
            *)  choose_character=0
                echo Elige un valor válido
        esac
    done

    sleep 1
    echo 1. Nombre: "$character_name_1"
    echo Descripción: "$character_description_1"
    echo Es un personaje especializado en ataque físico.
    echo 
    echo 2. Nombre: "$character_name_2"
    echo Descripción: "$character_description_2"
    echo Es un personaje especializado en ataque mágico.
    echo
    echo ¿Qué personaje vas a utilizar?
    sleep 1
    read -r choose_character
    
    case $choose_character in
        1)
            choose_character=0
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
            lobby
            ;;
        2)
            choose_character=0
            character_template_2
            current_character=2
            character_name=$character_name_2
            character_description=$character_description_2
            hp=$hp_2
            atk_p=$atk_p_2
            atk_m=$atk_m_2
            def_p=$def_p_2
            def_m=$def_m_2
            speed=$speed_2
            crit_r=$crit_r_2
            crit_h=$crit_h_2
            lobby
    esac
}