#!/bin/bash

full_percent=100


## Mob Template Variables
mob_template_1() {
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
    mob_skill_1=$(( (mob_atk_p * 2 ) * ( full_percent - current_def ) / "full_percent" ))
    mob_skill_1_text="$mob_name usa [Golpe Básico]"

    #after_left_hp=$(( hp - "mob_skill_"$randomized_skill"" ))
}
