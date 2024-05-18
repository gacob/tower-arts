#!/bin/bash

character_1_turn(){
    echo "Turno del Jugador 1"

    myturn_option=0
    while [[ $myturn_option -eq 0 ]]; do
        if [[ $p_first_character -eq 1 ]]; then
            echo "$c_1_skill_1_name"
            echo "$c_1_skill_2_name"
            echo "$c_1_skill_3_name"
            echo "$c_1_skill_4_name"

            character_move=0
            read -r -p "¿Cúal será tu próximo movimiento...?" character_move

            case $character_move in
            1)  echo "$c_1_skill_1_text"
                echo "El Jugador 1 ha hecho $c_1_skill_1 puntos de daño."
                mob_current_hp=$((mob_current_hp - c_1_skill_1))
                break 2
                ;;

            2)  echo "$c_1_skill_2_text"
                echo "El Jugador 1 ha hecho $c_1_skill_2 puntos de daño."
                mob_current_hp=$((mob_current_hp - c_1_skill_2))
                break 2
                ;;

            3)  echo "$c_1_skill_3_text"
                echo "El Jugador 1 ha hecho $c_1_skill_3 puntos de daño."
                mob_current_hp=$((mob_current_hp - c_1_skill_3))
                break 2
                ;;
            4)  echo "$c_1_skill_4_text"
                echo "El Jugador 1 ha hecho $c_1_skill_4 puntos de daño."
                mob_current_hp=$((mob_current_hp - c_1_skill_4))
                break 2
                ;;
            *)  echo "Elige una opción válida"
            ;;
            esac

        else
            echo "$c_2_skill_1_name"
            echo "$c_2_skill_2_name"
            echo "$c_2_skill_3_name"
            echo "$c_2_skill_4_name"

            character_move=0
            read -r -p "¿Cúal será tu próximo movimiento...?" character_move

            case $character_move in
            1)  echo "$c_2_skill_1_text"
                echo "El Jugador 1 ha hecho $c_2_skill_1 puntos de daño."
                mob_current_hp=$((mob_current_hp - c_2_skill_1))
                break 2
                ;;

            2)  echo "$c_2_skill_2_text"
                echo "El Jugador 1 ha hecho $c_2_skill_2 puntos de daño."
                mob_current_hp=$((mob_current_hp - c_2_skill_2))
                break 2
                ;;

            3)  echo "$c_2_skill_3_text"
                echo "El Jugador 1 ha hecho $c_2_skill_3 puntos de daño."
                mob_current_hp=$((mob_current_hp - c_2_skill_3))
                break 2
                ;;
            4)  echo "$c_2_skill_4_text"
                echo "El Jugador 1 ha hecho $c_2_skill_4 puntos de daño."
                mob_current_hp=$((mob_current_hp - c_2_skill_4))
                break 2
                ;;
            *)  echo "Elige una opción válida"
            ;;
            esac
        
        fi
    done


    rm mob_hp
    touch mob_hp

    echo "$mob_current_hp" >> mob_hp
    mob_current_hp=$( sed -n 1p ../../../mob_hp )

    echo Al enemigo le quedan "$mob_current_hp" puntos de vida restantes.

}



character_2_turn(){
    echo "Turno del Jugador 2"

    myturn_option=0
    while [[ $myturn_option -eq 0 ]]; do
        if [[ $p_first_character -eq 1 ]]; then
            echo "$c_1_skill_1_name"
            echo "$c_1_skill_2_name"
            echo "$c_1_skill_3_name"
            echo "$c_1_skill_4_name"

            character_move=0
            read -r -p "¿Cúal será tu próximo movimiento...?" character_move

            case $character_move in
            1)  echo "$c_1_skill_1_text"
                echo "El Jugador 2 ha hecho $c_1_skill_1 puntos de daño."
                mob_current_hp=$((mob_current_hp - c_1_skill_1))
                break 2
                ;;

            2)  echo "$c_1_skill_2_text"
                echo "El Jugador 2 ha hecho $c_1_skill_2 puntos de daño."
                mob_current_hp=$((mob_current_hp - c_1_skill_2))
                break 2
                ;;

            3)  echo "$c_1_skill_3_text"
                echo "El Jugador 2 ha hecho $c_1_skill_3 puntos de daño."
                mob_current_hp=$((mob_current_hp - c_1_skill_3))
                break 2
                ;;
            4)  echo "$c_1_skill_4_text"
                echo "El Jugador 2 ha hecho $c_1_skill_4 puntos de daño."
                mob_current_hp=$((mob_current_hp - c_1_skill_4))
                break 2
                ;;
            *)  echo "Elige una opción válida"
            ;;
            esac

        else
            echo "$c_2_skill_1_name"
            echo "$c_2_skill_2_name"
            echo "$c_2_skill_3_name"
            echo "$c_2_skill_4_name"

            character_move=0
            read -r -p "¿Cúal será tu próximo movimiento...?" character_move

            case $character_move in
            1)  echo "$c_2_skill_1_text"
                echo "El Jugador 2 ha hecho $c_2_skill_1 puntos de daño."
                mob_current_hp=$((mob_current_hp - c_2_skill_1))
                break 2
                ;;

            2)  echo "$c_2_skill_2_text"
                echo "El Jugador 2 ha hecho $c_2_skill_2 puntos de daño."
                mob_current_hp=$((mob_current_hp - c_2_skill_2))
                break 2
                ;;

            3)  echo "$c_2_skill_3_text"
                echo "El Jugador 2 ha hecho $c_2_skill_3 puntos de daño."
                mob_current_hp=$((mob_current_hp - c_2_skill_3))
                break 2
                ;;
            4)  echo "$c_2_skill_4_text"
                echo "El Jugador 2 ha hecho $c_2_skill_4 puntos de daño."
                mob_current_hp=$((mob_current_hp - c_2_skill_4))
                break 2
                ;;
            *)  echo "Elige una opción válida"
            ;;
            esac
        
        fi
    done


    rm mob_hp
    touch mob_hp

    echo "$mob_current_hp" >> mob_hp
    mob_current_hp=$( sed -n 1p ../../../mob_hp )

    echo Al enemigo le quedan "$mob_current_hp" puntos de vida restantes.

}

