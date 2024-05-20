#!/bin/bash


# Variables
floor_chances=(0-100)


### Floor Welcome
welcome() {
if [[ $hardcore -eq 0 || $first_time -eq 1 ]]; then 
    echo Una presencia celestial aparece ante ti...
    sleep 1
    echo ¡Hola, bienvenido! Soy Miguel. Sí, ese Árcangel Miguel del que tanto has oído hablar.
    sleep 1
    echo ¿Qué? ¿Que no has oído hablar de mí? Pensaba que en el infierno ya os había llegado el 5G.
    sleep 1
    echo ¡De todos modos! A lo que hemos venido...
    sleep 1
    echo ¡Bienvenido a la Torre de la Ascensión!
    sleep 1
    echo Aquí te enfrentarás a numerosos retos que pondrán a prueba tu fé y virtud, de modo que nosotros, los ángeles, podemos evaluar si hace falta sacarte de este hollo.
    sleep 2
    echo ¡Buena suerte!
    sleep 1
    echo ¡Ah, antes de que se me olvide!
    sleep 1
    echo Ya que sois dos, si morís uno de los dos participantes, el desafio a la Torre de la Ascensión terminará y tendréis que volver a empezar de cero. Son las reglas.
    sleep 1
    echo A fin de cuentas, es un poco injusto que estés luchando solo mientras tu compañero está cosiendo sus pedazos... Aquí en la Torre de la Ascensión queremos ser justos.
    sleep 2
    echo En fin, ¡Buena suerte!
    floor=1
elif [[ $hardcore -eq 0 || $first_time -eq 0 ]]; then
    echo ¿Has dejado ya de llorar? Te avisé de que esto era un reto real, no uno de esos de retos de Tiktok. Tendría que pedirle a Padre que lo prohiba aquí también...
    sleep 1
    echo Bueno, por donde íbamos. Ya sabes, no es tu primera vez. Bienvenido a la Torre de la Ascensión, es un reto y todo eso.
    sleep 1
    echo Buena suerte y al fondo a la derecha tienes las escaleras.
    sleep 1
    floor=1
else
    echo ¿Tu otra vez?
    sleep 1
    echo Supongo que nunca se puede confiar en uno de los vuestros...
    sleep 1
    floor=100
fi
}



### Floor Randomizer
floor_random() { # shellcheck disable=SC2309
if [[ "$floor"%10 -eq 0 ]]; then
    echo BOSS FIGHT
    boss_fight
else

    ## Probabilides:
    # 0-80% Enemigos
    # 20% Otra cosa. Ahí ya es 50/50
    floor_randomized=$(( RANDOM%floor_chances ))

    rm floor_randomized
    touch floor_randomized
    echo "$floor_randomized" >> floor_randomized
    floor_randomized=$( sed -n 1p floor_randomized)

    if [[ $floor_randomized -le 80 ]]; then
        echo Enemigo
        mob_battle
    else
        echo Santuario
        santuario
    fi
fi
}


### Floor Count
floor_counter() {
    floor=$(( floor + 1 ))
}
