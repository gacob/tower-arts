#!/bin/bash

mob_turn(){

    random_skill=$(( RANDOM%4 + 1))
    random_target=$(( RANDOM%2 + 1 ))

    mob_attack="mob_skill_text_${random_skill}"
    echo "$mob_name" usa "${!mob_attack}" > skill_text

    sleep 3

    # Ataca si no está desarmado
    if [[ $desarmar -ne 2 ]]; then
        mob_damage="mob_skill_${random_skill}"

        # Su tercer ataque es un Buff: Rugido
        if [[ $mob_damage -ne 3 ]]; then
            if [[ ( $random_target -ne 1 && shield_f_1 -ne 1 ) || ( $random_target -ne 2 && shield_f_2 -ne 1 )]]; then
                echo ¡"$mob_name" ha hecho "${!mob_damage}" puntos de daño! > skill_dmg
            
            else
                echo "$mob_name" ha intentado atacar al "$random_target" pero tiene un Escudo Físico.
            fi
        else
            echo ¡"$mob_name" se ha subido el ataque físico! > skill_dmg
        fi
    else
        echo ¡"$mob_name" no ha podido atacar porque ha sido desarmado! > skill_dmg
        desarmar=0
    fi

    sed -n 1p skill_text
    sed -n 1p skill_dmg

    sleep 3

    if [[ $random_target -eq 1 ]]; then
        current_hp_1=$(( current_hp_1 - mob_damage ))
        echo "Al Jugador 1 le quedan $current_hp_1 puntos de vida."
    else
        current_hp_2=$(( current_hp_2 - mob_damage ))
        echo "Al Jugador 2 le quedan $current_hp_2 puntos de vida."
    fi

    sleep 3

    dead

    if [[ $dead -eq 1 ]]; then
        death
    fi
    
}