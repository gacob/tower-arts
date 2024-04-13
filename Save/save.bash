#!/bin/bash

### Save System ###

save() {
    
    (
        # Introduce tus variables en una nueva línea tal que así:
        echo variable="$variable"

    ) > "save_1.bash"
}