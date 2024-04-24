#!/bin/bash

lobby (){
    echo "1. Entrar en la torre"
    echo "2. Cambiar personaje"
    echo "3. Infinito"
    echo "4. Libro"
    echo "5. Guardar partida"
    echo "6. Menú inicio"
    echo "7. Salir del juego"

    read -r -n 1 lobby_option

    case $lobby_option in
        1)  welcome
            floor_counter
            floor_random

            ;;
        
        2)  character
            ;;

        3)  
            ;;

        4)  book
            ;;

        5)  save
            ;;

        6)  start_menu
            ;;

        7)  exit
            ;;

        *)  echo "Debes seleccionar una opción del menú del lobby."
            clear
            lobby
            ;;
}