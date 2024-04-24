#!/bin/bash



### Floor Welcome
if [[ $hardcore -eq 0 || $first_time -eq 1 ]]; then 
    echo Una presencia celestial aparece ante ti...
    sleep 1
    echo ¡Hola, bienvenido! Soy Miguel. Sí, ese Árcangel Miguel del que tanto has oído hablar.
    sleep 1
    echo ¿Qué? ¿Que no has oído hablar de mí? Pensaba que en el infierno ya os había llegado el 5G.
    sleep 1
    echo ¡De todos modos! A lo que hemos venido...
    echo ¡Bienvenido a la Torre de la Ascensión!
    sleep 1
    echo Aquí te enfrentarás a numerosos retos que pondrán a prueba tu fé y virtud, de modo que nosotros, los ángeles, podemos evaluar si hace falta sacarte de este hollo.
    sleep 1
    echo ¡Buena suerte!
elif [[ $hardcore -eq 0 || $first_time -eq 0 ]]; then
    echo ¿Tu otra vez?
    sleep 1
    echo Ya sabes, no es tu primera vez
fi


### Floor Randomizer