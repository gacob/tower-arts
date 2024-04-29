#!/bin/bash

full_percent=100

## Mob Template Variables
mob_name="Orco"
mob_hp=150
mob_atk_p=12
mob_atk_m=5
mob_def_p=10
mob_def_m=2
speed=10

# Skill_N = Daño que haces
mob_skill_1=$(( (boss_atk * 1 ) * ( full_percent - current_def ) / "full_percent" ))
mob_skill_1_text="$mob_name usa [Golpe Básico]"

after_left_hp=$(( hp - "mob_skill_"$randomized_skill"" ))


## Mob Scaling
escale=$(( level * 1 ))

mob_hp=$(( mob_hp * escale ))
mob_atk=$(( mob_atk * escale ))
mob_def=$(( mob_def * escale ))