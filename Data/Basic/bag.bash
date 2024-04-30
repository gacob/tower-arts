#!/bin/bash

bag_info() {
    bag=(
        [0]=Prueba
        [1]=Prueba2
    )
    
}

bag_checker() {
    bag_loop=0

    # Equipa un objeto si la mochila no está llena
    if [[ "${#bag[*]}" -lt 4 ]]; then
        echo Equipar objeto
        bag+=( "$item_carried" )
        bag_loop=1
    fi

    # Comprueba si la mochila está llena
    while [[ "${#bag[*]}" -ge 4 && $bag_loop -eq 0 ]]; do
        echo La mochila está llena, ¿Desea reemplazar un objeto por otro?
        echo AVISO: El objeto reemplazado será destruido.
        echo 1. Reemplazar. 2. No reemplazar "(Volver)".
        read -r bag_replace_choice
        
        case $bag_replace_choice in
            1) bag_replace_choice=0
                bag_loop=2
            ;;
            2) bag_replace_choice=0
                bag_loop=1
            ;;
            *) bag_replace_choice=0
                echo Esta opción no es válida.
        esac
    done

    # Reemplaza objeto
    while [[ $bag_loop -eq 2 ]]; do
        echo ¿Qué objeto quieres reemplazar?
        "${#bag[*]}"
        read -r bag_replace_choice

        if [[ $bag_replace_choice -eq * ]]; then
            bag["$bag_replace_choice"]=$item_carried
            bag_loop=0
        fi
    done
}