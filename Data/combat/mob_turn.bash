#!/bin/bash

mob_turn(){
    echo Turno del monstruo

    random_skill=$(( RANDOM % 4 + 1))
    
    mob_attack="mob_skill_text_${random_skill}"
    echo "${!mob_attack}"

    mob_damage="mob_skill_${random_skill}"
    echo Daño recibido: "${!mob_damage}"

    current_hp=$(( current_hp - mob_damage ))

    echo "$current_hp"

    dead

    if [[ $dead -eq 1 ]]; then
        death
    fi
    
}