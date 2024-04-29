#!/bin/bash

shop_option=(0-100)

tienda() {
    contador=0

    # Seleccionamos 4 objetos para la tienda
    while [[ $contador -lt 4 ]]; do
        random_shop_option=$(( RANDOM%shop_option))
        
        shop_item_[contador]="${drop[$random_shop_option]}"
        contador+=
    done

    sleep 1
    check=0
    while [[ $check -eq 0 ]]; do
        echo 
        echo 1. "$shop_item_1"
        echo 2. "$shop_item_2"
        echo 3. "$shop_item_3"
        echo 4. "$shop_item_4"
        echo 
        echo ¿Quieres comprar o vender?
        echo 1. Comprar. 2. Vender.
        read -r shop_choice
        
        case $shop_choice in
            1)  
                shop_choice=0
                check=1
                while [[ $check -eq 1 ]]; do
                    echo 1. "$shop_item_1"
                    echo 2. "$shop_item_2"
                    echo 3. "$shop_item_3"
                    echo 4. "$shop_item_4"
                    echo
                    echo ¿Cuál quieres comprar?
                    read -r shop_choice

                    case $shop_choice in
                        1) echo Primera compra
                            shop_choice=0
                            ;;
                        2)  echo Segunda compra
                            shop_choice=0
                            ;;
                        3)  echo tercera compra
                            shop_choice=0
                            ;;
                        4)  echo cuarta compra
                            shop_choice=0
                            ;;
                        *)
                            shop_choice=0
                            echo Esta opción no es válida
                    esac
                done
                ;;
            2)
                shop_choice=0
                check=2
                while [[ $check -eq 2 ]]; do
                    echo ¿Qué objeto quieres vender?
                    bag
                    echo 1. $bag_item_1
                    echo 2. $bag_item_2
                    echo 3. $bag_item_3
                    echo 4. $bag_item_4
                    read -r shop_choice

                    case $shop_choice in
                        *) 
                            shop_choice=0
                            echo Esta opción no es válida
                    esac
                done
                ;;
            *)
                shop_choice=0
                echo Esta opción no es válida
        esac
    done
}