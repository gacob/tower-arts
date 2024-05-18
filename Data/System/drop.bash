#!/bin/bash

gold_chances=(0-100)

reward_exp() {
    experience=$(( experience + ( level * 5 ) ))
    echo ¡Los espectadores te ha recompensado por superar esta planta!
    sleep 1
    echo Has conseguido $(( level  * 5 )) Monedas del Vicio.
    echo Sientes como las Monedas del Vicio te hacen más poderoso...
    sleep 1
}
