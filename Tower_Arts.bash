#!/bin/bash

source data/system/death.bash
source data/system/level_up.bash
source data/system/tower.bash
source data/system/drop.bash
source data/basic/lobby.bash
source data/basic/matchmaking.bash
source data/basic/character.bash
source data/character/character_1.bash
source data/character/character_2.bash
source data/mobs/mob_template_1.bash
source data/mobs/mob_template_2.bash
source data/mobs/mob_template_3.bash
source data/combat/character_turn.bash
source data/combat/mob_turn.bash
source data/combat/mob_battle.bash

start_option=0

start_menu (){
    echo  
    echo 
    echo  
    echo "_________ _______           _______  _______        _______  _______      _______  _______  _       _________ _______  _______          "
    echo "\__   __/(  ___  )|\     /|(  ____ \(  ____ )      (  ___  )(  ____ \    (  ____ \(  ___  )( (    /|\__   __/(  ___  )(  ____ \|\     /|"
    echo "  ) (   | (   ) || )   ( || (    \/| (    )|      | (   ) || (    \/    | (    \/| (   ) ||  \  ( |   ) (   | (   ) || (    \/( \   / )"
    echo "  | |   | |   | || | _ | || (__    | (____)|      | |   | || (__        | (__    | (___) ||   \ | |   | |   | (___) || (_____  \ (_) / "
    echo "  | |   | |   | || |( )| ||  __)   |     __)      | |   | ||  __)       |  __)   |  ___  || (\ \) |   | |   |  ___  |(_____  )  \   /  "
    echo "  | |   | |   | || || || || (      | (\ (         | |   | || (          | (      | (   ) || | \   |   | |   | (   ) |      ) |   ) (   "
    echo "  | |   | (___) || () () || (____/\| ) \ \__      | (___) || )          | )      | )   ( || )  \  |   | |   | )   ( |/\____) |   | |   "
    echo "  )_(   (_______)(_______)(_______/|/   \__/      (_______)|/           |/       |/     \||/    )_)   )_(   |/     \|\_______)   \_/   "
    echo
    echo "                                               _    _    _    _    _    _    _    _    _  "
    echo "                                             _| |__| |__| |__| |__| |__| |__| |__| |__| |_"
    echo "                                             |                                            |"
    echo "                                             |                                            |"
    echo "                                             |                                            |"
    echo "                                             |                                            |"
    echo "                                             |                                            |"
    echo "                                             |                                            |"
    echo "                                             |             1. Nueva partida.              |"
    echo "                                             |                                            |"
    echo "                                             |             2. Salir                       |"
    echo "                                             |                                            |"
    echo "                                             |                                            |"
    echo "                                             |                                            |"
    echo "                                             |                                            |"
    echo "                                             |                                            |"
    echo "                                             |                                            |"
    echo "                                             |                                            |"
    echo "                                             |                                            |"
    echo "                                             |____________________________________________|"
    echo 
    echo
    echo 

    read -r -s -n 1 start_option

    case $start_option in
        1)  first_time=1
            lobby
            ;;
        2)  start_option=0
            while [[ $yn != [yY] || $yn != [nN] ]]; do
            echo
            echo "¿Estás seguro que quieres salir? (Pulsa y o Y para confirmar. Pulsa n or N para cancelar)"
            read -r -s -n 1 yn
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