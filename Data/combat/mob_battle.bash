#!/bin/bash


mob_battle(){

    mob_count
    character_template_1
    character_skillset_1
    mob_template_1
    mob_skillset_1

    echo Deberás luchar contra "$mob_count" si quieres seguir avanzando...

    current_hp=hp_${current_character}

    echo Tu vida es: "${!current_hp}"

    mob_current_hp=$mob_hp

    echo La vida del primer monstruo es: "$mob_current_hp"


    while [[ $mob_count -ne 0 ]]; do
        if [[ $speed -ge $mob_speed ]]; then
            while [[ $current_hp -ge 0 || $mob_count -gt 0 ]]; do
                character_turn
                mob_turn
            done
        else
            while [[ $current_hp -ge 0 || $mob_count -gt 0 ]]; do
                mob_turn
                character_turn
            done
        fi
    done

    floor_counter
    floor_random
}