#!/bin/bash


mob_battle(){

    # Cargando monstruos
    mob_template_1
    mob_skillset_1

    echo "Piso $floor"

    echo 
    echo Os encuentráis a un "$mob_name" frente a vosotros.
    echo 
    sleep 1
    echo 
    
    if [[ $p_first_character -eq 1 ]]; then
        current_hp_1=$hp_1

    else
        current_hp_1=$hp_2
    fi

    if [[ $p_second_character -eq 1 ]]; then
        current_hp_2=$hp_1
    else
        current_hp_2=$hp_2
    fi

    echo $current_hp_1 > current_hp_1
    echo $current_hp_2 > current_hp_2

    current_hp_1=$( sed -n 1p current_hp_1 )
    current_hp_2=$( sed -n 1p current_hp_2 )

    echo "Jugador 1 es: $current_hp_1 puntos de vida."
    echo "Jugador 2 es: $current_hp_2 puntos de vida."

    mob_current_hp=$mob_hp

    echo "$mob_name": "$mob_current_hp" puntos de vida.
    sleep 1

    read -r character_move
    
    if [[ $speed_1 -ge $mob_speed ]]; then
            while [[ $current_hp_1 -gt 0 && $current_hp_2 -gt 0 && $mob_current_hp -gt 0 ]]; do

                # Almacenamos la IP del jugador que ve esto
                current=$NCAT_REMOTE_ADDR
                current="${current//./}"

                combat=1
                echo $combat > combat_data

                # Turno del Jugador 1
                if [[ $current -eq $cliente_ip_1 ]]; then
                    character_1_turn
                else
                    echo "Es el turno del Jugador 1"

                    while [[ $combat -eq 1 ]]; do
                        combat=$( sed -n 1p combat_data )
                    done
                fi

                # Turno del Jugador 2
                if [[ $current -eq $cliente_ip_2 ]]; then
                    character_2_turn
                else
                    echo "Es el turno del Jugador 2"

                    while [[ $combat -eq 2 ]]; do
                        combat=$( sed -n 1p combat_data )
                    done
                fi

                # Turno del Monstruo
                combat=3
                echo "Es el turno del $mob_name"
                mob_turn

                while [[ $combat -eq 3 ]]; do
                    combat=$( sed -n 1p combat_data )
                done
            done
        else
            while [[ $current_hp_1 -gt 0 && $current_hp_2 -gt 0 && $mob_current_hp -gt 0 ]]; do
                
                # Turno del Monstruo
                combat=3
                echo "Es el turno del $mob_name"
                mob_turn

                while [[ $combat -eq 3 ]]; do
                    combat=$( sed -n 1p combat_data )
                done

                # Almacenamos la IP del jugador que ve esto
                current=$NCAT_REMOTE_ADDR
                current="${current//./}"

                combat=1
                rm combat_data
                touch combat_data
                echo $combat > combat_data

                # Turno del Jugador 1
                if [[ $current -eq $cliente_ip_1 ]]; then
                    character_1_turn
                else
                    echo "Es el turno del Jugador 1"

                    while [[ $combat -eq 1 ]]; do
                        combat=$( sed -n 1p combat_data )
                    done
                fi
                
                # Turno del Jugador 2
                if [[ $current -eq $cliente_ip_2 ]]; then
                    character_2_turn
                else
                    echo "Es el turno del Jugador 2"

                    while [[ $combat -eq 2 ]]; do
                        combat=$( sed -n 1p combat_data )
                    done
                fi
            done
        fi

    reward_exp
    floor_counter
    floor_random
}