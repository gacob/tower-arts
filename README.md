
<h1> Lista de Funciones y Variables </h1>
- save() = Sistema de Guardado (Un sólo Slot por el momento)

- load() = Sistema de Carga de partida
    - loading_slot_choice INT = Número de slot guardado a cargar

- check_exp() = Sistema de aumento de nivel por acumulación de experiencia obtenida por el jugador.
    - level = Nivel que tiene el jugador en un momento dado durante el juego.
    - experience = Cantidad de experiencia acumulada que tiene el jugador en un momento dado durante el juego.
    - exp_needed = Cantidad de experiencia a acumular necesaria por el jugador para subir de nivel.
    - exp_base = Experiencia con la que el jugador empieza un nivel. Usado para cálculo de exp_needed del nivel al que se ha subido.

- welcome() = Mensaje de Bienvenida para la torre

- floor_random() = Elige el floor aleatoriamente excepto que sea boss. Llama a boss_fight(), mob_battle(), tienda(), santuario()
    - floor_chances = Integer array 0-100
    - floor_randomized = Número aleatorio del array

- floor_counter () - Contador de Floor
    - floor = Piso/Planta de la Torre

<h1> Texto </h1>
- text_1 = Array con líneas en Español
