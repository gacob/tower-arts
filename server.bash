#!/bin/bash

# Iniciar el servidor
start_server() {

    # Crear un socket en el puerto 12345
    rm list_ip
    rm character_choice
    rm character_first_player
    rm character_second_player
    rm lobby_option
    rm current_hp_1
    rm current_hp_2
    rm combat_data
    rm skill_text
    rm skill_dmg
    rm skill_hp
    rm mob_hp
    rm random_mob
    rm mob_random_skill
    rm mob_random_target
    rm buff

    touch list_ip
    touch character_choice
    touch character_first_player
    touch character_second_player
    touch lobby_option
    touch current_hp_1
    touch current_hp_2
    touch combat_data
    touch skill_text
    touch skill_dmg
    touch skill_hp
    touch mob_hp
    touch random_mob
    touch mob_random_skill
    touch mob_random_target
    touch buff

    export count=1
    export choosing=1
    # < = Leer
    # > = Escribir
    ncat -m 2 -klv 8080 -e "Tower_Arts.bash"
}

start_server