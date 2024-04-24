#!/bin/bash


### Maneja todo el sistema de la torre, combates, etc
join_tower() {
    welcome
    while [[ $dead -ne 1 ]]; do
        floor_random
        floor_counter
    done
    death
}

