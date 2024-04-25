#!/bin/bash

info_character() {
    echo Estás usando a $character_name
}


default_character() {
    character_template_1
    current_character=1
    character_name=$character_name_1
    hp=$hp_1
    atk_p=$atk_p_1
    atk_m=$atk_m_1
    def_p=$def_p_1
    def_m=$def_m_1
    speed=$speed_1
    crit_r=$crit_r_1
    crit_h=$crit_h_1
}
