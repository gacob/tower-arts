#!/bin/bash

### Personaje 2: El Perfeccionista
character_template_2 () {
    character_name_2="El Perfeccionista"
    character_description_2="¿Nunca te has fijado en que todos los demonios tienen sus cuernos colocados de forma simétrica? ¿Quién crees que los diseñó?"
    hp_2=100
    atk_p_2=1
    atk_m_2=10
    def_p_2=5
    def_m_2=5
    speed_2=5
}

character_skillset_2() {
    c_2_skill_1_name="Habilidad 1"
    c_2_skill_1=$(( (atk_p * 2 ) * ( full_percent - mob_def_p ) / "full_percent" ))
    c_2_skill_1_text="$character_name usa [Golpe Básico]"
    c_2_skill_2_name="Habilidad 2"
    c_2_skill_2=$(( (atk_p * 2 ) * ( full_percent - mob_def_p ) / "full_percent" ))
    c_2_skill_2_text="$character_name usa [Golpe Duro]"
    c_2_skill_3_name="Vacío"
    c_2_skill_3=
    c_2_skill_3_text="$character_name usa [Golpe Feo]"
    c_2_skill_4_name="Vacío"
    c_2_skill_4=
    c_2_skill_4_text="$character_name usa [Golpe Celestial]"
}
