#!/bin/bash

full_percent=100

### Personaje 1 (Por Defecto): El Narcisista
character_template_1() {
    character_name_1="El Narcisista"
    character_description_1="El infierno sólo está caliente porque está él."
    hp_1=100
    atk_p_1=10
    atk_m_1=5
    def_p_1=5
    def_m_1=5
    speed_1=12
}

character_skillset_1() {
    full_percent=100

    c_1_skill_1_name="Detroit Smash [Físico]"
    c_1_skill_1=$(( (atk_p_1 * 3 ) * ( full_percent - mob_def_p ) / "full_percent" ))
    c_1_skill_1_text="usa [Detroit Smash]"
    c_1_skill_2_name="Puño Incasdescente [Mágico]"
    c_1_skill_2=$(( (atk_m_1 * 3 ) * ( full_percent - mob_def_p ) / "full_percent" ))
    c_1_skill_2_text="usa [Puño Incasdescente]"
    c_1_skill_3_name="Rugido de Titán de Ataque"
    c_1_skill_3=$(( atk_p_1 + 5 ))
    c_1_skill_3_text="usa [Rugido de Titán de Ataque]. ¡Su ataque físico ha subido!"
    c_1_skill_4_name="Rugido de Titán Acorazado"
    c_1_skill_4=$(( atk_p_1 + 2 && def_m_1 + 2 ))
    c_1_skill_4_text="usa [Rugido de Titán Acorazado]. ¡Toda la defensa ha subido!"
    
}