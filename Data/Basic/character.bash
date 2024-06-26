#!/bin/bash

choose_character() {

    read -r choice_character_x
    
    while [[ $p_first_character -eq 0 ]]; do
        choice_character_x=0
        echo 
        echo ¿Qué personaje deseas utilizar?
        echo Ten en cuenta que el segundo jugador será forzado a usar el personaje que no has elegido.
        echo 
        sleep 1
        echo 1. Nombre: "$character_name_1"
        echo Descripción: "$character_description_1"
        echo Es un personaje especializado en ataque físico.
        echo 
        sleep 2
        echo 2. Nombre: "$character_name_2"
        echo Descripción: "$character_description_2"
        echo Es un personaje especializado en ataque mágico.
        sleep 1
        echo
        read -r choice_character_x

        case $choice_character_x in
            1) echo Has elegido "$character_name_1"
                p_first_character=1
                choice_character_x=0
                echo "$p_first_character" >> character_first_player
            ;;
            2) echo Has elegido "$character_name_2"
                p_first_character=2
                choice_character_x=0
                echo "$p_first_character" >> character_first_player
            ;;
            *) echo Elige una opción válida por favor.
        esac
    done
}

info_character() {
    p_first_character=$( sed -n 1p character_first_player )

    if [[ "$current" -eq "$cliente_ip_1" ]]; then 
        if [[ $p_first_character -eq 1 ]]; then
            echo "_____________________________"
            echo
            echo Estás usando a "$character_name_1"
            echo
            echo "______________________________"
            echo
            echo Vida: "$hp_1"
            echo Ataque Físico: "$atk_p_1"
            echo Ataque Mágico: "$atk_m_1"
            echo Defensa Física: "$def_p_1"
            echo Defensa Mágica: "$def_m_1"
            echo Velocidad: "$speed_1"
            echo 
            sleep 1
        else
            echo "_____________________________"
            echo
            echo Estás usando a "$character_name_2"
            echo
            echo "______________________________"
            echo
            echo Vida: "$hp_2"
            echo Ataque Físico: "$atk_p_2"
            echo Ataque Mágico: "$atk_m_2"
            echo Defensa Física: "$def_p_2"
            echo Defensa Mágica: "$def_m_2"
            echo Velocidad: "$speed_2"
            echo 
            sleep 1 
        fi
    fi

    if [[ "$current" -eq "$cliente_ip_2" ]]; then 
        if [[ $p_second_character -eq 1 ]]; then
            echo "_____________________________"
            echo
            echo Estás usando a "$character_name_1"
            echo
            echo "______________________________"
            echo
            echo Vida: "$hp_1"
            echo Ataque Físico: "$atk_p_1"
            echo Ataque Mágico: "$atk_m_1"
            echo Defensa Física: "$def_p_1"
            echo Defensa Mágica: "$def_m_1"
            echo Velocidad: "$speed_1"
            echo 
            sleep 1
        else
            echo "_____________________________"
            echo
            echo Estás usando a "$character_name_2"
            echo
            echo "______________________________"
            echo
            echo Vida: "$hp_2"
            echo Ataque Físico: "$atk_p_2"
            echo Ataque Mágico: "$atk_m_2"
            echo Defensa Física: "$def_p_2"
            echo Defensa Mágica: "$def_m_2"
            echo Velocidad: "$speed_2"
            echo 
            sleep 1 
        fi
    fi
}