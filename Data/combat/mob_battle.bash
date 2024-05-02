#!/bin/bash


mob_battle(){

    character_template_1
    character_skillset_1
    mob_template_1
    mob_skillset_1

    current_hp=hp_${current_character}

    echo "${!current_hp}"

    mob_current_hp=$mob_hp


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
}