#!/bin/bash

full_percent=100

## Mob Template Variables
mob_template_3() {
    gender=1
    mob_name="Manticora"
    mob_hp=50
    mob_atk_p=5
    mob_atk_m=5
    mob_def_p=20
    mob_def_m=20
    mob_speed=5

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
mob_skillset_3() {
    mob_skill_1=$(( (mob_atk_p * 3 ) * ( full_percent - def_p ) / "full_percent" ))
    mob_skill_text_1="usa [Golpe de Cola]"
    
    mob_skill_2=$(( (mob_atk_m * 3 ) * ( full_percent - def_p ) / "full_percent" ))
    mob_skill_text_2="usa [Hazañas Mitológicas]"
    
    mob_skill_3=$(( mob_def_p + 2 && mob_def_m + 2 ))
    mob_skill_text_3="usa [Sangre Mutante]. Su defensa ha subido"
    
    mob_skill_4=$(( (mob_atk_p * 4 ) * ( full_percent - def_p ) / "full_percent" ))
    mob_skill_text_4="usa [Garras Puntiagudas]"

}