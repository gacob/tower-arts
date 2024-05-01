#!/bin/bash

source combat.bash

mob_battle(){

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

mob_battle