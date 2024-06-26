#!/bin/bash


# Variables
floor_chances=(0-100)


### Floor Welcome
welcome() {
if [[ $hardcore -eq 0 || $first_time -eq 1 ]]; then 
    clear
    echo Abres las puertas de la Torre cuando una presencia celestial aparece ante ti...
    sleep 3
    echo ¡Hola, bienvenido! Soy Miguel. Sí, ese Árcangel Miguel del que tanto has oído hablar.
    sleep 3
    echo ¿Qué? ¿Que no has oído hablar de mí? Pensaba que en el infierno ya os había llegado el 5G.
    sleep 5
    echo ¡De todos modos! A lo que hemos venido...
    sleep 2
    echo ¡Bienvenido a la Torre de la Ascensión!
    sleep 2
    echo Aquí te enfrentarás a numerosos retos que pondrán a prueba tu fé y virtud, de modo que nosotros, los ángeles, podemos evaluar si hace falta sacarte de este hollo.
    sleep 2
    echo ¡Buena suerte!
    sleep 1
    echo ¡Ah, antes de que se me olvide!
    sleep 2
    echo Ya que sois dos, si morís uno de los dos participantes, el desafio de la Torre de la Ascensión terminará y tendréis que volver a empezar de cero. Son las reglas.
    sleep 5
    echo A fin de cuentas, es un poco injusto que estés luchando solo mientras tu compañero está cosiendo sus pedazos... Aquí en la Torre de la Ascensión queremos ser justos.
    sleep 5
    echo En fin, ¡Buena suerte!
    echo 
    sleep 1
    echo Tras esta bienvenida, subes las escaleras mientras te preparas para el combate...
    sleep 5
    echo Pulsa un botón para continuar...
    read -r $unreal
    clear
elif [[ $hardcore -eq 0 || $first_time -eq 0 ]]; then
    clear
    echo ¿Has dejado ya de llorar? Te avisé de que esto era un reto real, no uno de esos de retos de Tiktok. Tendría que pedirle a Padre que lo prohiba aquí también...
    sleep 1
    echo Bueno, por donde íbamos. Ya sabes, no es tu primera vez. Bienvenido a la Torre de la Ascensión, es un reto y todo eso.
    sleep 1
    echo Buena suerte y al fondo a la derecha tienes las escaleras.
    echo 
    sleep 1
    echo Tras esta bienvenida, subes las escaleras mientras te preparas para el combate...
    sleep 5
    echo Pulsa un botón para continuar...
    read -r $unreal
    clear
else
    clear
    echo ¿Tu otra vez?
    sleep 1
    echo Supongo que nunca se puede confiar en uno de los vuestros...
    sleep 1
    echo 
    echo Pulsa un botón para continuar...
    read -r $unreal
    clear
    floor=99
fi
}



### Floor Randomizer
floor_random() { # shellcheck disable=SC2309
mob_battle
}


### Floor Count
floor_counter() {
    floor=$(( floor + 1 ))
}
