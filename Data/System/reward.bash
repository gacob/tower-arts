#!/bin/bash

drop_chances=(0-100)

reward_exp() {
    experience=$(( experience + (( level / mob_level ) * 5 ) ))
    echo Has obtenido $(( ( level / mob_level ) * 5 )) de experiencia.
}

reward_drop() {
    drop_randomized=$(( RANDOM%drop_chances ))

    for value in "${drop[@]}"; do
        [[ $drop_randomized -ge $value ]];
        echo Has obtenido "${drop[$value]}"
        break
    done
}