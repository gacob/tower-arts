#!/bin/bash

check_exp() {
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
}