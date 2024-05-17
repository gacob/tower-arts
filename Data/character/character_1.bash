#!/bin/bash

full_percent=100

### Personaje 1 (Por Defecto): El Narcisista
character_template_1() {
    character_name_1="El Narcisista"
    character_description_1="El infierno sólo está caliente porque está él."
    hp_1=100
    atk_p_1=10
    atk_m_1=1
    def_p_1=5
    def_m_1=5
    speed_1=12
    crit_r_1=5
    crit_h_1=150
}

character_skillset_1() {
    c_skill_1_name="Habilidad 1"
    c_skill_1=$(( (atk_p * 2 ) * ( full_percent - mob_def_p ) / "full_percent" ))
    c_skill_1_text="$character_name usa [Golpe Básico]"
    c_skill_2_name="Habilidad 2"
    c_skill_2=$(( (atk_p * 2 ) * ( full_percent - mob_def_p ) / "full_percent" ))
    c_skill_2_text="$character_name usa [Golpe Duro]"
    c_skill_3_name="Vacío"
    c_skill_3=
    c_skill_3_text="$character_name usa [Golpe Feo]"
    c_skill_4_name="Vacío"
    c_skill_4=
    c_skill_4_text="$character_name usa [Golpe Celestial]"
    
}