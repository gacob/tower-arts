#!/bin/bash

character_escale=$((level * 1))


atk_p(){
    atk_p=$((mob_hp - atk_p))
}

atk_m(){
    atk_m=$((mob_hp - atk_m))
}

def_m(){
    def_p=$((hp - ((mob_atk / 100) * def_p) * character_escale))
}

def_m(){
    def_m=$((hp - ((mob_atk / 100) * def_m) * character_escale))
}

speed(){
    echo IN BUILDING
}

crit_r(){
    echo IN BUILDING
}

crit_h(){
    echo IN BUILDING
}