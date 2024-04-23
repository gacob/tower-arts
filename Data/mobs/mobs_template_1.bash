#!/bin/bash

full_percent=100

## Mob Template Variables
mob_name="Orco"
mob_hp=150
mob_atk=12
mob_def=10

# Skill_N = Daño que haces
mob_skill_1=$(( (boss_atk * 1 ) * ( full_percent - current_def ) / "full_percent" ))
mob_skill_1_text="$mob_name usa [Golpe Básico]"

mob_skill_2=$(( (boss_atk * 2 ) * ( full_percent - current_def ) / "full_percent" ))
mob_skill_2_text=

mob_skill_3=$(( (boss_atk * 3 ) * ( full_percent - current_def ) / "full_percent" ))
mob_skill_3_text=

mob_skill_4=$(( (boss_atk * 4 ) * ( full_percent - current_def ) / "full_percent" ))
mob_skill_4_text=

after_left_hp=$(( current_hp - "mob_skill_"$randomized_skill"" ))


## Mob Scaling
escale=$(( level * 1 ))

mob_hp=$(( mob_hp * escale ))
mob_atk=$(( mob_atk * escale ))
mob_def=$(( mob_def * escale ))