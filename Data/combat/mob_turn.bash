#!/bin/bash

mob_turn(){
    echo Turno del monstruo

    random_skill=$(( RANDOM % 4 + 1))
    
    mob_attack="mob_skill_text_${random_skill}"
    echo "$mob_name" usa "${!mob_attack}"

    mob_damage="mob_skill_${random_skill}"
    echo ¡"$mob_name" ha hecho "${!mob_damage}" puntos de daño!

    random_target=$(RANDOM % 2 + 1)

    if [[ $random_target -eq 1 ]]; then
        current_hp_1=$(( current_hp_1 - mob_damage ))
        echo "Al Jugador 1 le quedan $current_hp_1 puntos de vida."
    else
        current_hp_2=$(( current_hp_2 - mob_damage ))
        echo "Al Jugador 2 le quedan $current_hp_2 puntos de vida."
    fi

    dead

    if [[ $dead -eq 1 ]]; then
        death
    fi
    
}