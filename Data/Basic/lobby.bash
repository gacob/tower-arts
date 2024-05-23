#!/bin/bash

lobby (){
    level=1
    bug_fix=1
    
    # Cargando personajes
    character_template_1
    character_skillset_1
    character_template_2
    character_skillset_2

    # Asignación de IP al entrar al servidor
    case $count in
    1)  cliente_ip_1=$NCAT_REMOTE_ADDR
        cliente_ip_1="${cliente_ip_1//./}"
        echo Esta es tu IP: "$cliente_ip_1"
        count=$(( count + 1 ))
        ;;
    2) cliente_ip_2=$NCAT_REMOTE_ADDR
        cliente_ip_2="${cliente_ip_2//./}"
        echo Esta es tu IP: "$cliente_ip_2"
        count=$(( count + 1 ))
   esac

    # Wait Room
    echo Esperando a los dos jugadores...

    # Almacenamos las IP
    echo "$cliente_ip_1" >> list_ip
    cliente_ip_1=$( sed -n 1p list_ip )

    # Esperamos a que entre el segundo y almacenamos su IP
    while [[ $cliente_ip_1 != "" && $cliente_ip_2 == "" ]]; do
        cliente_ip_2=$( sed -n 2p list_ip )
    done

    echo "ip 1" "$cliente_ip_1"
    echo "ip 2" "$cliente_ip_2"

    # Asignación de Personaje
    current=$NCAT_REMOTE_ADDR
    current="${current//./}"

    echo "$choosing" > character_choice

    # Jugador 1
    if [[ "$current" -eq "$cliente_ip_1" ]]; then
        choose_character
        export choosing=0
        echo $choosing > character_choice
    else
        echo "Jugador 1 está eligiendo personaje."

        while [[ $choosing -eq 1 ]]; do
            p_first_character=$( sed -n 1p character_first_player )
            choosing=$( sed -n 1p character_choice )
        done

        rm character_choice

        sleep 1

        #Jugador 2
        if [[ $p_first_character -eq 1 ]]; then
                echo "El Jugador 1 ha elegido $character_name_1"
                sleep 1
                echo "El Jugador 2 jugará como $character_name_2"
                p_second_character=2
                echo "$p_second_character" > character_second_player
        else
            echo "El Jugador 1 ha elegido $character_name_2"
            sleep 1
            echo "El Jugador 2 jugará como $character_name_1"
            p_second_character=1
            echo "$p_second_character" > character_second_player
        fi
    fi

    sleep 1

    p_second_character=$( sed -n 1p character_second_player )

    info_character
    echo "1. Entrar en la torre"
    echo "2. Menú inicio"
    echo "3. Salir del juego"

    if [[ "$current" -eq "$cliente_ip_1" ]]; then
        read -r -s -n 1 lobby_option
        echo "$lobby_option" > lobby_option
    else
        echo 
        echo "El Jugador 1 es el líder del grupo."
        sleep 1
        echo "El líder del grupo tiene que elegir en el menú."
        echo 

        while [[ $lobby_option -eq 0 ]]; do
            lobby_option=$( sed -n 1p lobby_option )
        done
    fi

    case $lobby_option in
        1)  join_tower
            ;;

        2)  start_menu
            ;;

        3)  exit
            ;;

        *)  echo "Debes seleccionar una opción del menú del lobby."
            clear
            lobby
            ;;
    esac
}