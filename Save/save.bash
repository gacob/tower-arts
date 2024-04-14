#!/bin/bash

# shellcheck disable=SC1091
source ../locale/spanish.bash
### Save System ###

save() {
    
    # shellcheck disable=SC2154
    echo echo "${text_1[2]}" # ¿En qué ranura quieres guardar?
    sleep 1

    (
        # Introduce tus variables en una nueva línea tal que así:
        echo variable="$variable"

    ) > "save_1.bash"
}