#!/bin/bash

monstruo() {
    echo "Has matado al monstruo"
    read -r exp
    experience=$(( experience + exp ))
    echo $experience
    check
}

check() {
    if [[ $level -eq 0 || $level -eq 1 ]]; then
        exp_needed=10
        level=1
    fi

    while [[ $experience -ge $exp_needed ]]; do
        exp_base=$exp_needed
        exp_needed=$(( exp_base * 2 ))
        level=$(( level + 1))
        echo "Has subido de nivel" $level
    done
    monstruo
}

monstruo
check