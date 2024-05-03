#!/bin/bash

character_turn(){
    echo Tu turno
    echo 1. Atacar
    echo 2. Mochila

    myturn_option=0
    while [[ $myturn_option -eq 0 ]]; do
        myturn_option=0
        read -r -p "¿Qué quieres hacer?" myturn_option
        case $myturn_option in
            1)  character_move=0
                while [[ $character_move -ge 0 ]]; do
                    echo "$c_skill_1_name"
                    echo "$c_skill_2_name"
                    echo "$c_skill_3_name"
                    echo "$c_skill_4_name"
                    character_turn=0
                    read -r -p "¿Cúal será tu próximo movimiento...?" character_move
                    case $character_move in
                        1)  echo "$c_skill_1_text"
                            echo Daño otorgado: "$c_skill_1"
                            mob_current_hp=$((mob_current_hp - c_skill_1))
                            break 2
                            ;;

                        2)  echo "$c_skill_2_text"
                            echo Daño otorgado: "$c_skill_2"
                            mob_current_hp=$((mob_current_hp - c_skill_2))
                            break 2
                            ;;

                        3)  if [[ $c_skill_3_name = "Vacío" ]]; then
                                echo No tienes ninguna habilidad aquí. Selecciona otra
                            else
                                echo "$c_skill_3_text"
                                echo Daño otorgado: "$c_skill_3"
                                mob_current_hp=$((mob_current_hp - c_skill_3))
                                break 2
                            fi
                            ;;

                        4)  if [[ $c_skill_4_name = "Vacío" ]]; then
                                echo No tienes ninguna habilidad aquí. Selecciona otra
                            else
                                echo "$c_skill_4_text"
                                echo Daño otorgado: "$c_skill_4"
                                mob_current_hp=$((mob_current_hp - c_skill_4))
                                break 2
                            fi
                            ;;

                        *)  echo "Elige una opción válida"
                            ;;
                    esac
                done
                ;;

            2)  bag_info
                character_turn
                ;;

            *)  echo "Elige una opción válida"
                ;;
        esac
    done
    echo Vida restante monstruo: "$mob_current_hp"
    if [[ $mob_current_hp -le 0 ]]; then
        ((mob_count--))
        echo No bajes la guardia, aún te quedan "$mob_count"
    fi
}



