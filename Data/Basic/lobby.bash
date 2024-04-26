#!/bin/bash

lobby (){
    info_character
    echo "1. Entrar en la torre"
    echo "2. Cambiar personaje"
    echo "3. Libro"
    echo "4. Guardar partida"
    echo "5. Menú inicio"
    echo "6. Salir del juego"

    read -r -s -n 1 lobby_option

    case $lobby_option in
        1)  join_tower
            ;;
        
        2)  change_character
            ;;

        3)  book
            ;;

        4)  save
            ;;

        5)  while [[ $yn != [yY] || $yn != [nN] ]]; do
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

        6)  exit
            ;;

        *)  echo "Debes seleccionar una opción del menú del lobby."
            clear
            lobby
            ;;
    esac
}