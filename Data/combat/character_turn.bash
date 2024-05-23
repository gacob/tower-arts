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
            echo "¿Cúal será tu próximo movimiento...?"
            read -r character_move

            if [[ $character_move -eq 1 ]]; then
                echo "El Jugador 1 $c_1_skill_1_text" > skill_text
                echo "El Jugador 1 ha hecho $c_1_skill_1 puntos de daño." > skill_dmg
                mob_current_hp=$((mob_current_hp - c_1_skill_1))
                break 2
            fi

            if [[ $character_move -eq 2 ]]; then
            echo "El Jugador 1 $c_1_skill_2_text" > skill_text
                echo "El Jugador 1 ha hecho $c_1_skill_2 puntos de daño." > skill_dmg
                mob_current_hp=$((mob_current_hp - c_1_skill_2))
                break 2
            fi

            if [[ $character_move -eq 3 ]]; then
            echo "El Jugador 1 $c_1_skill_3_text" > skill_text
                break 2
            fi
            
            if [[ $character_move -eq 4 ]]; then
            echo "El Jugador 1 $c_1_skill_4_text" > skill_text
                break 2
            fi

        else
            echo "$c_2_skill_1_name"
            echo "$c_2_skill_2_name"
            echo "$c_2_skill_3_name"
            echo "$c_2_skill_4_name"

            character_move=0
            echo "¿Cúal será tu próximo movimiento...?"
            read -r character_move

            if [[ $character_move -eq 1 ]]; then
                echo "El Jugador 1 $c_2_skill_1_text" > skill_text
                echo "El Jugador 1 ha hecho $c_2_skill_1 puntos de daño." > skill_dmg
                mob_current_hp=$((mob_current_hp - c_2_skill_1))
                break 2
            fi

            if [[ $character_move -eq 2 ]]; then
                echo "El Jugador 1 $c_2_skill_2_text" > skill_text
                desarmar=2
                break 2
            fi

            if [[ $character_move -eq 3 ]]; then 
                echo "El Jugador 1 $c_2_skill_3_text" > skill_text
                f_shield=1
                shield
                break 2
            fi

            if [[ $character_move -eq 4 ]]; then
                echo "El Jugador 1 $c_2_skill_4_text" > skill_text
                m_shield=1
                shield
                break 2
            fi
        
        fi
    done

    sleep 1

    echo "$mob_current_hp" >> mob_hp
    mob_current_hp=$( sed -n 1p mob_hp )

    echo Al enemigo le quedan "$mob_current_hp" puntos de vida restantes. > skill_dmg
    
    combat=2
    echo $combat > combat_data
    sleep 1
}



character_2_turn(){

    echo "Turno del Jugador 2"

    myturn_option=0
    while [[ $myturn_option -eq 0 ]]; do
        if [[ $p_second_character -eq 1 ]]; then
            echo "$c_1_skill_1_name"
            echo "$c_1_skill_2_name"
            echo "$c_1_skill_3_name"
            echo "$c_1_skill_4_name"

            character_move=0
            echo "¿Cúal será tu próximo movimiento...?"
            read -r character_move

            if [[ $character_move -eq 1 ]]; then
                echo "El Jugador 2 $c_1_skill_1_text" > skill_text
                echo "El Jugador 2 ha hecho $c_1_skill_1 puntos de daño." > skill_dmg
                mob_current_hp=$((mob_current_hp - c_1_skill_1))
                break 2
            fi

            if [[ $character_move -eq 2 ]]; then
                echo "El Jugador 2 $c_1_skill_2_text" > skill_text
                echo "El Jugador 2 ha hecho $c_1_skill_2 puntos de daño." > skill_dmg
                mob_current_hp=$((mob_current_hp - c_1_skill_2))
                break 2
            fi

            if [[ $character_move -eq 3 ]]; then
                echo "El Jugador 2 $c_1_skill_3_text" > skill_text
                break 2
            fi

            if [[ $character_move -eq 4 ]]; then
                echo "El Jugador 2 $c_1_skill_4_text" > skill_text
                break 2
            fi

        else
            echo "$c_2_skill_1_name"
            echo "$c_2_skill_2_name"
            echo "$c_2_skill_3_name"
            echo "$c_2_skill_4_name"

            character_move=0
            echo "¿Cúal será tu próximo movimiento...?"
            read -r character_move

            if [[ $character_move -eq 1 ]]; then
                echo "El Jugador 2 $c_2_skill_1_text" > skill_text
                echo "El Jugador 2 ha hecho $c_2_skill_1 puntos de daño." > skill_dmg
                mob_current_hp=$((mob_current_hp - c_2_skill_1))
                break 2
            fi

            if [[ $character_move -eq 2 ]]; then
                echo "El Jugador 2 $c_2_skill_2_text" > skill_text
                desarmar=2
                break 2
            fi

            if [[ $character_move -eq 3 ]]; then
                echo "El Jugador 2 $c_2_skill_3_text" > skill_text
                f_shield=1
                shield
                break 2
            fi

            if [[ $character_move -eq 4 ]]; then
                echo "El Jugador 2 $c_2_skill_4_text" > skill_text
                m_shield=1
                shield
                break 2
            fi
        fi
    done

    sleep 1

    echo "$mob_current_hp" > mob_hp
    mob_current_hp=$( sed -n 1p mob_hp )

    echo Al enemigo le quedan "$mob_current_hp" puntos de vida restantes. > skill_hp

    sleep 1
}

