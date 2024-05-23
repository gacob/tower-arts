#!/bin/bash

mob_turn(){

    if [[ "$current" -eq "$cliente_ip_1" ]]; then
        random_skill=$(( RANDOM%4 + 1))
        random_target=$(( RANDOM%2 + 1 ))
        echo $random_skill > mob_random_skill
        echo $random_target > mob_random_target

    else
        while [[ $random_target -eq 0 ]]; do
            random_skill=$( sed -n 1p mob_random_skill)
            random_target=$( sed -n 1p mob_random_target )
        done
    fi

    mob_attack="mob_skill_text_${random_skill}"
    echo "$mob_name" "${!mob_attack}" > skill_text

    sleep 1

    # Ataca si no está desarmado
    if [[ $desarmar -ne 2 ]]; then
        mob_damage="mob_skill_${random_skill}"

        # Su tercer ataque es un Buff: Rugido
        if [[ $random_skill -ne 3 ]]; then
            if [[ ( $random_target -ne 1 && shield_f_1 -ne 1 ) || ( $random_target -ne 2 && shield_f_2 -ne 1 ) ]]; then
                echo ¡"$mob_name" ha hecho "${!mob_damage}" puntos de daño! > skill_dmg
            
            else
                echo "$mob_name" ha intentado atacar al "$random_target" pero tiene un Escudo.
            fi
        else
            echo "¡$mob_name $mob_skill_text_3!" > skill_dmg
            echo "" > skill_text
        fi
    else
        echo ¡"$mob_name" no ha podido atacar porque ha sido desarmado! > skill_dmg
        desarmar=0
    fi

    sed -n 1p skill_text
    sed -n 1p skill_dmg

    sleep 1

    if [[ $random_target -eq 1 ]]; then
        if [[ $random_skill -ne 3 || $desarmar -ne 2 || ( $random_target -ne 1 && shield_f_1 -ne 1 ) || ( $random_target -ne 2 && shield_f_2 -ne 1 ) ]]; then
            current_hp_1=$(( current_hp_1 - mob_damage ))
            echo "Al Narcisista le quedan $current_hp_1 puntos de vida."
        else
            echo 
        fi
    else
        if [[ $random_skill -ne 3 || $desarmar -ne 2 || ( $random_target -ne 1 && shield_f_1 -ne 1 ) || ( $random_target -ne 2 && shield_f_2 -ne 1 ) ]]; then
            current_hp_2=$(( current_hp_2 - mob_damage ))
            echo "Al Perfeccionista le quedan $current_hp_2 puntos de vida."
        else
            echo 
        fi            
    fi

    sleep 1

    combat=1
    dead

    if [[ $dead -eq 1 ]]; then
        death
    fi
    
}