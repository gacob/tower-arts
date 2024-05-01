#!/bin/bash

drop_chances=(0-100)
gold_chances=(0-100)

reward_exp() {
    experience=$(( experience + ( level * 5 ) ))
    echo Has obtenido $(( level  * 5 )) de experiencia.
}


reward_drop() {
    drop_randomized=$(( RANDOM%drop_chances ))

    for value in "${drop[@]}"; do
        [[ $drop_randomized -ge $value ]];
        echo Has obtenido "${drop[$value]}"
        item_carried="${drop[$value]}"
        bag_checker
        break
    done
}


reward_gold() {
    drop_gold_randomized=$(( RANDOM%gold_chances ))

    gold=$(( gold + drop_gold_randomized ))
    echo Has obtenido $drop_gold_randomized monedas del vicio.
}