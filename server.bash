#!/bin/bash

# Iniciar el servidor
start_server() {

    # Crear un socket en el puerto 12345
    rm list_ip
    touch list_ip

    export count=1
    
    # < = Leer
    # > = Escribir
    ncat -m 2 -klv 8080 -e "Tower_Arts.bash"
}

start_server