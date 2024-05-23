#!/bin/bash

full_percent=100

### Personaje 2: El Perfeccionista
character_template_2 () {
    character_name_2="El Perfeccionista"
    character_description_2="¿Nunca te has fijado en que todos los demonios tienen sus cuernos colocados de forma simétrica? ¿Quién crees que los diseñó?"
    hp_2=100
    atk_p_2=5
    atk_m_2=10
    def_p_2=5
    def_m_2=5
    speed_2=5
}

character_skillset_2() {
    c_2_skill_1_name="Avada Kedrava [Mágico]"
    c_2_skill_1=$(( (atk_m_2 * 3 ) * ( full_percent - mob_def_p ) / "full_percent" ))
    c_2_skill_1_text="usa [Avada Kedrava]"

    c_2_skill_2_name="Encantamiento Desarmador"
    c_2_skill_2=2
    c_2_skill_2_text="usa [Encantamiento Desarmador]. ¡El enemigo no hará daño durante el siguiente turno!"
   
    c_2_skill_3_name="Escudo Físico"
    c_2_skill_3=3
    c_2_skill_3_text="usa [Escudo Físico]"

    c_2_skill_4_name="Escudo Mágico"
    c_2_skill_4=4
    c_2_skill_4_text="usa [Escudo Mágico]"
}

shield() {

    echo ¿A qué Jugador quieres aplicarle el Escudo?
    echo "1. Jugador 1"
    echo "2. A ti mismo"
    read -r shield_choice

    case $shield_choice in
        1) shield_choice=0
            if [[ $f_shield -eq 1 ]]; then
                shield_f_j1=1
            else
                shield_m_j1=1
            fi
            ;;
        2) shield_choice=0
            if [[ $f_shield -eq 1 ]]; then
                shield_f_j2=1
            else
                shield_m_j2=1
            fi
    esac

}