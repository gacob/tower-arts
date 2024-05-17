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



    while [[ $mob_count -ne 0 ]]; do
        if [[ $speed_1 -ge $mob_speed ]]; then
            while [[ $current_hp_1 -gt 0 || $current_hp_2 -gt 0 || $mob_count -gt 0 ]]; do
                character_turn
                mob_turn
            done
        else
            while [[ $current_hp_1 -gt 0 || $current_hp_2 -gt 0 || $mob_count -gt 0 ]]; do
                mob_turn
                character_turn
            done
        fi
    done

    floor_counter
    floor_random
}