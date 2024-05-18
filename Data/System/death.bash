#!/bin/bash


death() {
    echo Has muerto...
    sleep 1
    echo Pero ninguna muerte es para siempre...
    sleep 1
    first_time=0
    lobby
}


dead() {
    if [[ $current_hp_1 -le 0 || $current_hp_2 -le 0 ]]; then
        dead=1
    fi
}