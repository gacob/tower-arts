#!/bin/bash

full_percent=100

## Mob Template Variables
mob_template_2() {
    gender=1
    mob_name="Sirena"
    mob_hp=75
    mob_atk_p=3
    mob_atk_m=8
    mob_def_p=6
    mob_def_m=6
    mob_speed=25

    ## Mob Scaling
    escale=$(( level * 1 ))

    mob_hp=$(( mob_hp * escale ))
    mob_atk_p=$(( mob_atk_p * escale ))
    mob_atk_m=$(( mob_atk_m * escale ))

    mob_def_p=$(( mob_def_p * escale ))
    mob_def_m=$(( mob_def_m * escale ))

    mob_speed=$(( mob_speed * escale ))

}


# Skill_N = Daño que haces
mob_skillset_2() {
    mob_skill_1=$(( (mob_atk_p * 2 ) * ( full_percent - def_p ) / "full_percent" ))
    mob_skill_text_1=" usa [Golpe de Aleta]"
    
    mob_skill_2=$(( (mob_atk_m * 4 ) * ( full_percent - def_p ) / "full_percent" ))
    mob_skill_text_2=" usa [Escupir Agua]"
    
    mob_skill_3=$(( mob_atk_m + 5 ))
    mob_skill_text_3=" usa [Canto de Sirena]. Su ataque ha subido"
    
    mob_skill_4=$(( (mob_atk_m * 8 ) * ( full_percent - def_p ) / "full_percent" ))
    mob_skill_text_4=" usa [Por la Alianza]"

}
