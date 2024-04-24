
<h1> Lista de Funciones y Variables </h1>
- start_menu() = Menú de inicio del juego e inicializador del juego.
    - start_option = Selección por número de los elementos del menú de inicio. Se vuelve cero después de entrar en un case.
    - redirect = *Uso aún por definir*
    - first_time = Variable con uso estilo booleano para hacer saber al sistema de torre si es la primera vez que accedemos a ella o no.

- save() = Sistema de Guardado (Un sólo Slot por el momento)

- load() = Sistema de Carga de partida
    - loading_slot_choice INT = Número de slot guardado a cargar

- check_exp() = Sistema de aumento de nivel por acumulación de experiencia obtenida por el jugador.
    - level = Nivel que tiene el jugador en un momento dado durante el juego.
    - experience = Cantidad de experiencia acumulada que tiene el jugador en un momento dado durante el juego.
    - exp_needed = Cantidad de experiencia a acumular necesaria por el jugador para subir de nivel.
    - exp_base = Experiencia con la que el jugador empieza un nivel. Usado para cálculo de exp_needed del nivel al que se ha subido.

- lobby() = Menú principal del juego in-game donde se podrá llamar a join_tower(), character(), book(), save(), start_menu() si queremos volver al menú de inicio y salir del juego directamente.

- join_tower() = Proceso que maneja los bucles para el sistema de la torre y el lobby

- welcome() = Mensaje de Bienvenida para la torre
    - floor = Te pone el piso inicial (1)

- floor_random() = Elige el floor aleatoriamente excepto que sea boss. Llama a boss_fight(), mob_battle(), tienda(), santuario()
    - floor_chances = Integer array 0-100
    - floor_randomized = Número aleatorio del array

- floor_counter () = Contador de Floor
    - floor = Piso/Planta de la Torre

- death() = Fin de la torre.
    - first_time = Se vuelve 0. Comprueba si es tu primerita vez no más

- dead() = Check para saber si has muerto
    - dead = Se vuelve 1 si has muerto.

<h1> Texto </h1>
- text_1 = Array con líneas en Español
