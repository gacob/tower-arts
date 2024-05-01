#!/bin/bash


element=( "Ceniza" "Imaginación" "Fé" "Exorcismo")
ceniza_array=(2 1 1 2)
imaginacion_array=(1 2 2 1)
fe_array=(2 2 1 1)
exorcismo_array=(1 2 2 0)

element_check() {
    case "${element[$current_element]}" in
        1) 
    esac
    
    # Nuestro elemento
    "${element[$current_element]}"

    # Elemento tipo Enemigo
    "${element[$current_enemy_element]}"

    echo Placeholder
}


c_element_check() {
    echo Placeholder
}

m_element_check() {
    echo Placeholder
}