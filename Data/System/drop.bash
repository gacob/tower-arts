#!/bin/bash

gold_chances=(0-100)

reward_exp() {
    experience=$(( experience + ( level * 5 ) ))
    echo ¡Los espectadores te ha recompensado por superar esta planta!
    sleep 1
    echo Has conseguido $(( level  * 5 )) de experiencia.
}

reward_gold() {
    drop_gold_randomized=$(( RANDOM%gold_chances ))

    gold=$(( gold + drop_gold_randomized ))
    echo Has obtenido $drop_gold_randomized Monedas del Vicio.
}