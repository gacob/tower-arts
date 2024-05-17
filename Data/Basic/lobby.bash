#!/bin/bash

lobby (){

    # Asignación de IP al entrar al servidor
    cliente_ip_1=$NCAT_REMOTE_ADDR
    cliente_ip_1="${cliente_ip_1//./}"

    # Almacenamos las IP
    echo "$cliente_ip_1" >> list_ip
    cliente_ip_1=$( sed -n 1p ../../../list_ip )

    # Esperamos a que entre el segundo y almacenamos su IP
    while [[ $cliente_ip_1 != "" && $cliente_ip_2 == "" ]]; do
        cliente_ip_2=$( sed -n 2p ../../../list_ip )
    done

    # Wait Room
    echo Esperando a los dos jugadores...

    echo "ip 1" "$cliente_ip_1"
    echo "ip 2" "$cliente_ip_2"

    # Asignación de Personaje
    current=$NCAT_REMOTE_ADDR
    current="${current//./}"
    choosing=1

    rm character_choice
    touch character_choice
    echo $choosing >> character_choice

    # Jugador 1
    echo ¿Qué personaje deseas elegir?
    if [[ "$current" -eq "$cliente_ip_1" ]]; then
        choose_character
        choosing=1
        echo $choosing >> "$( sed -n 1p ../../../character_choice )"
    else
        echo "Jugador 1 está eligiendo personaje."

        while [[ $choosing -eq 1 ]]; do
            p_first_character=$( sed -n 1p ../../../character_first_player )
            choosing=$( sed -n 1p ../../../character_choice )
        done

        sleep 1
        case $p_first_character in
            1) echo "El Jugador 1 ha elegido $character_name_1"
                sleep 1
                echo Jugarás como "$character_name_2"
                p_second_character=2
                echo "$p_second_character" >> character_second_player
            ;;
            2) echo "El Jugador 1 ha elegido $character_name_2"
                sleep 1
                echo Jugarás como "$character_name_1"
                p_second_character=1
                echo "$p_second_character" >> character_second_player
        esac
    fi

    #Jugador 2


    info_character
    echo "1. Entrar en la torre"
    echo "2. Menú inicio"
    echo "3. Salir del juego"

    read -r -s -n 1 lobby_option
    echo "$lobby_option" >> lobby_option
    lobby_option=$( sed -n 1p ../../../lobby_option )

    case $lobby_option in
        1)  join_tower
            ;;
        2)  while [[ $yn != [yY] || $yn != [nN] ]]; do
            echo
            read -r -p "¿Estás seguro que quieres volver al menú de inicio? (Pulsa y o Y para confirmar. Pulsa n or N para cancelar)" -s -n 1 yn
            echo
            echo
                case $yn in
                [yY])   start_menu
                        ;;
                [nN])   clear
                        lobby
                        ;;
                
                *)      echo
                        echo
                        echo "Selecciona (y|Y) o (n|N)"
                        ;;
                esac
            done
            ;;

        3)  exit
            ;;

        *)  echo "Debes seleccionar una opción del menú del lobby."
            clear
            lobby
            ;;
    esac
}