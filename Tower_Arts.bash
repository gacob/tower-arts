#!/bin/bash

source data/system/death.bash
source data/system/level_up.bash
source data/system/tower.bash
source data/system/drop.bash
source data/basic/element.bash
source data/basic/lobby.bash
source data/basic/matchmaking.bash
source data/basic/character.bash
source data/basic/shrine.bash
source data/character/character_1.bash
source data/character/character_2.bash
source data/mobs/mob_template_1.bash
source data/combat/character_turn.bash
source data/combat/mob_turn.bash
source data/combat/mob_battle.bash


start_menu (){
    echo "1. Nueva partida"
    echo "2. Salir"
    echo

    read -r -s -n 1 start_option

    case $start_option in
        1) start_option=0
            # shellcheck disable=SC2034
            first_time=1
            lobby
            ;;
        2)  start_option=0
            while [[ $yn != [yY] || $yn != [nN] ]]; do
            echo
            read -r -p "¿Estás seguro que quieres salir? (Pulsa y o Y para confirmar. Pulsa n or N para cancelar)" -s -n 1 yn
                case $yn in
                [yY])   echo
                        echo
                        echo "Buen viaje!"
                        exit
                        ;;
                [nN])   clear
                        start_menu
                        ;;
                
                *)      echo
                        echo
                        echo "Selecciona (y|Y) o (n|N)"
                        ;;
                esac
            done        
            ;;

        *)  start_option=0
            echo "Debes seleccionar una opción del menú."
            clear
            start_menu
    esac
}

start_menu