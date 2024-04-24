#!/bin/bash


source Save/save.bash
source Save/load.bash
source Data/System/level_up.bash
source Data/mobs/mobs_template_1.bash

start_menu (){
    echo "1. Continuar partida"
    echo "2. Nueva partida"
    echo "3. Cargar partida"
    echo "4. Salir"

    read -r -s -n 1 start_option

    case $start_option in
        1)  start_option=0
            continue_game
            ;;

        2) start_option=0
            redirect=1
            save
            ;;

        3)  start_option=0
            redirect=2
            load
            ;;

        4)  while [[ $yn != [yY] || $yn != [nN] ]]; do
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

        *)  echo "Debes seleccionar una opción del menú."
            clear
            start_menu
    esac
}