#!/bin/bash


### Maneja todo el sistema de la torre, combates, etc
join_tower() {
    welcome
    while [[ $dead -ne 1 ]]; do
        reward_exp
        floor_counter
        floor_random
    done
    death
}

