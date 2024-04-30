#!/bin/bash

bag() {
    bag=(
        [0]=Prueba
        [1]=Prueba2
    )
    echo "$bag_count"
    echo "${#bag[*]}"
    
}

bag