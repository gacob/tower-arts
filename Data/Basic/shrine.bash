#!/bin/bash

santuario() {
    echo Todo a tu alrededor se desvanece...
    sleep 1
    echo De pronto te encuentras frente un escritorio con una señora sentada y mirándote fíjamente
    sleep 1
    echo Bienvenido cariño a la Dimensión-616.
    echo Este lugar es un sitio para que nuestros héroes, como tú, descansen.
    sleep 1
    echo No te preocupes, nuestros servicios son de la más alta clase. Tenemos un largo historial de héroes que han pasado por aquí, como Iron-man y Florida-man, incluso el famoso Batman.
    sleep 1

    shrine_option=0
    while [[ $shrine_option -eq 0 ]]; do
        echo ¿Qué deseas hacer primero?
        echo 1. Estar un rato en el Jacuzzi.
        echo 2. Dormir.
        read -r shrine_choice

        case $shrine_choice in
            1)
            shrine_choice=0
            shrine_option=1
            ;;
            2)
            shrine_choice=0
            shrine_option=2
            ;;
            *)
            shrine_choice=0
        esac
    done

    shrine_stat=(1-4)
    contador=0
    case $shrine_option in
        1)
        echo Han subido algunas de tus estadísticas.

        while [[ $contador -ne 4 ]]; do
            random_shrine_stat=$(( RANDOM%shrine_stat ))

            case $random_shrine_stat in
                1)
                    random_shrine_stat=0
                    hp=$(( hp + 10 ))
                ;;
                2)
                    random_shrine_stat=0
                    speed=$(( speed + 5 ))
                ;;
                3)
                    random_shrine_stat=0
                    crit_r=$(( crit_r + 2 ))
                ;;
                4)
                    random_shrine_stat=0
                    crit_h=$(( crit_h + 10 ))
                ;;
            esac
            contador+=
        done

        sleep 1
        echo Después de estar un rato con las burbujas, vuelves a tu dimensión.
        sleep 1
        shrine_option=0
        floor_counter
        floor_random
        ;;
        2)
        echo Han subido algunas de tus estadísticas.

        while [[ $contador -ne 4 ]]; do
            random_shrine_stat=$(( RANDOM%shrine_stat ))

            case $random_shrine_stat in
                1)
                    random_shrine_stat=0
                    atk_p=$(( atk_p + 5 ))
                ;;
                2)
                    random_shrine_stat=0
                    atk_m=$(( atk_m + 5 ))
                ;;
                3)
                    random_shrine_stat=0
                    def_p=$(( def_p + 2 ))
                ;;
                4)
                    random_shrine_stat=0
                    def_m=$(( def_m + 2 ))
                ;;
            esac
            contador+=
        done

        sleep 1
        echo Después de descansar, vuelves a tu dimensión.
        sleep 1
        shrine_option=0
        floor_counter
        floor_random
    esac
}