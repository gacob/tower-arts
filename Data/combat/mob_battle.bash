#!/bin/bash


mob_battle(){

    # Cargando personajes
    character_template_1
    character_skillset_1
    character_template_2
    character_skillset_2

    # Cargando monstruos
    mob_template_1
    mob_skillset_1

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

    rm current_hp_1
    rm current_hp_2
    touch current_hp_1
    touch current_hp_2
    current_hp_1=$( sed -n 1p ../../../current_hp_1 )
    current_hp_2=$( sed -n 1p ../../../current_hp_2 )

    echo "La vida del Jugador 1 es: $current_hp_1"
    echo "La vida del Jugador 2 es: $current_hp_2"

    mob_current_hp=$mob_hp

    echo La vida del monstruo es: "$mob_current_hp"
    sleep 1

    while [[ $mob_count -ne 0 ]]; do
        if [[ $speed_1 -ge $mob_speed ]]; then
            while [[ $current_hp_1 -gt 0 && $current_hp_2 -gt 0 && $mob_current_hp -gt 0 ]]; do

                # Almacenamos la IP del jugador que ve esto
                current=$NCAT_REMOTE_ADDR
                current="${current//./}"

                combat=1
                rm combat_data
                touch combat_data
                echo $combat >> combat_data

                # Turno del Jugador 1
                if [[ $current -eq $cliente_ip_1 ]]; then
                    character_1_turn
                else
                    echo "Es el turno del Jugador 1"

                    while [[ $combat -eq 1 ]]; do
                        combat=$( sed -n 1p ../../../combat_data )
                    done
                fi

                # Turno del Jugador 2
                if [[ $current_hp_2 -gt 0 ]] then
                    character_2_turn
                else
                    echo "Es el turno del Jugador 2"

                    while [[ $combat -eq 2 ]]; do
                        combat=$( sed -n 1p ../../../combat_data )
                    done
                fi

                mob_turn
            done
        else
            while [[ $current_hp_1 -gt 0 && $current_hp_2 -gt 0 && $mob_current_hp -gt 0 ]]; do
                
                mob_turn

                # Almacenamos la IP del jugador que ve esto
                current=$NCAT_REMOTE_ADDR
                current="${current//./}"

                combat=1
                rm combat_data
                touch combat_data
                echo $combat >> combat_data

                # Turno del Jugador 1
                if [[ $current -eq $cliente_ip_1 ]] then
                    character_1_turn
                else
                    echo "Es el turno del Jugador 1"

                    while [[ $combat -eq 1 ]]; do
                        combat=$( sed -n 1p ../../../combat_data )
                    done
                fi
                
                # Turno del Jugador 2
                if [[ $current_hp_2 -gt 0 ]] then
                    character_2_turn
                else
                    echo "Es el turno del Jugador 2"

                    while [[ $combat -eq 2 ]]; do
                        combat=$( sed -n 1p ../../../combat_data )
                    done
                fi
            done
        fi
    done

    reward_exp
    floor_counter
    floor_random
}