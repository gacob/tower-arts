#!/bin/bash

drop_chances=(0-100)
gold_chances=(0-100)

reward_exp() {
    experience=$(( experience + ( level * 5 ) ))
    echo Tu fé te ha recompensado por superar esta planta.
    echo Has conseguido $(( level  * 5 )) de experiencia.
}


reward_drop() {

    drop_randomized=$(( RANDOM%drop_chances ))

    #echo El número aleatorio es: $drop_randomized
    #echo El objeto dropeado sería: "${drop_chance[@]:"$drop_randomized":1}"
    item_carried="${drop_chance[@]:"$drop_randomized":1}"
    echo Obtienes el objeto ["${drop_name[$item_carried]}"]
    bag_checker
}


reward_gold() {
    drop_gold_randomized=$(( RANDOM%gold_chances ))

    gold=$(( gold + drop_gold_randomized ))
    echo Has ganado $drop_gold_randomized monedas del vicio.
}