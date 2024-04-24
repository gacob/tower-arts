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
    if [[ $current_hp -le 0 ]]; then
        dead=1
    fi
}