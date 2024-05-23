#!/bin/bash

full_percent=100


## Mob Template Variables
mob_template_1() {
    gender=0
    mob_name="Orco"
    mob_hp=150
    mob_atk_p=12
    mob_atk_m=5
    mob_def_p=10
    mob_def_m=2
    mob_speed=10

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
mob_skillset_1() {
    mob_skill_1=$(( (mob_atk_p * 2 ) * ( full_percent - def_p ) / "full_percent" ))
    mob_skill_text_1="usa [Puño Furioso]"
    
    mob_skill_2=$(( (mob_atk_p * 4 ) * ( full_percent - def_p ) / "full_percent" ))
    mob_skill_text_2="usa [Rompedor de Cráneos]"
    
    mob_skill_3=$(( mob_atk_p + 5 ))
    mob_skill_text_3="usa [Rugido]. Su ataque ha subido."
    
    mob_skill_4=$(( (mob_atk_p * 5 ) * ( full_percent - def_p ) / "full_percent" ))
    mob_skill_text_4="usa [Por la Horda]"

}