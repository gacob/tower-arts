#!/bin/bash

shop_option=(0-5)


tienda() {

    # Seleccionamos 2 objetos para la tienda
    while [[ $contador -le 2 ]]; do
        random_shop_option=$(( RANDOM%shop_option + 1))
        
        declare "shop_item_${contador}=${drop_name[$random_shop_option]}"
        declare "precio_${contador}=$(( RANDOM%shop_option + 50 ))"

        contador=$(( contador + 1))
    done

    sleep 1
    check=0

    ## ¿Comprar o Vender?
    while [[ $check -eq 0 ]]; do
        echo 
        echo 1. "$shop_item_1" - Precio: "$precio_1" Monedas del Vicio
        echo 2. "$shop_item_2" - Precio: "$precio_2" Monedas del Vicio
        echo 
        echo ¿Quieres comprar algún objeto?
        echo 1. Comprar. 2. Volver
        read -r shop_choice
        
        case $shop_choice in
            ## Comprar
            1)  
                shop_choice=0
                check=1
                while [[ $check -eq 1 ]]; do
                    echo 1. "$shop_item_1"
                    echo 2. "$shop_item_2"
                    echo
                    echo ¿Cuál quieres comprar?
                    read -r shop_choice

                    ## ¿Cuál vas a comprar?
                    case $shop_choice in
                        1) echo Primera compra
                            shop_choice=0
                            item_carried=$shop_item_1
                            bag_checker
                            check=0
                            floor_counter
                            floor_random
                            ;;
                        2)  echo Segunda compra
                            shop_choice=0
                            item_carried=$shop_item_2
                            bag_checker
                            check=0
                            floor_counter
                            floor_random
                            ;;
                        *)
                            shop_choice=0
                            echo Esta opción no es válida
                    esac
                done
                ;;
                
            2) shop_choice=0
                check=1
                floor_counter
                floor_random
            ;;
            *)
                shop_choice=0
                echo Esta opción no es válida
        esac
    done
}