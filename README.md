
<h1> Lista de Funciones y Variables </h1>

### Tower_Arts###
# Tower_Arts.bash
- start_menu() = Menú de inicio del juego e inicializador del juego.
    - start_option = Selección por número de los elementos del menú de inicio. Se vuelve cero después de entrar en un case.
    - redirect = *Uso aún por definir*
    - first_time = Variable con uso estilo booleano para hacer saber al sistema de torre si es la primera vez que accedemos a ella o no.


### Character ###
## data/basic/character.bash
- info_character() = Panel con información del Personaje activo

- default_character() = Añadir al personaje por defecto cuando se entra al lobby.

- change_character() = Opción de cambiar de personaje
    - choose_character = Usado para preguntar si se va a cambiar de PJ y a qué PJ.
    - list_character = Si se cambia de personaje se sale del bucle


### Lobby ###
## data/basic/lobby.bash
- lobby() = Menú principal del juego in-game donde se podrá llamar a join_tower(), character(), book(), save(), start_menu() si queremos volver al menú de inicio y salir del juego directamente.


### Matchmaking ###
### data/basic/matchmaking.bash
- join_tower() = Proceso que maneja los bucles para el sistema de la torre y el lobby


### Character Template ###
## data/character
- character_template_1() = Plantilla con nombre, descripción y stats del personaje
    - character_name_1
    - character_description_1
    - hp_1
    - atk_p_1 = Ataque físico
    - atk_m_1 = Ataque mágico
    - def_p_1 = Defensa física
    - def_m_1 = Defensa mágica
    - speed = Velocidad (decide quién empieza el turno)
    - crit_r_1 = Crit Rate
    - crit_h_1 = Crit Hit (Daño del ataque crítico) - Mínimo debería de ser 150
- character_skil_set_1() = La pasiva + dos habilidades primarias del personaje


### Mob Template ###
## data/mobs
    - mob_name
    - mob_hp
    - mob_atk_p
    - mob_atk_m
    - mob_def_p
    - mob_def_m
    - speed
    - mob_skill_1 = Habilidad 1 del mob (Golpe Básico)
    - mob_skill_1_text = Texto cuando lanza la habilidad
    - after_left_hp = Vida que le quita al jugador tras lanzar la habilidad (por completar)
    - escale = Escalado de
    - mob_hp = Escalado de vida por nivel
    - mob_atk

### Save ###
## data/system/save.bash
- save() = Sistema de Guardado (Un sólo Slot por el momento)
    - ranura_guardado = La ranura de guardado


### Load ###
## data/system/load.bash
- load() = Sistema de Carga de partida
    - loading_slot_choice INT = Número de slot guardado a cargar


- check_exp() = Sistema de aumento de nivel por acumulación de experiencia obtenida por el jugador.
    - level = Nivel que tiene el jugador en un momento dado durante el juego.
    - experience = Cantidad de experiencia acumulada que tiene el jugador en un momento dado durante el juego.
    - exp_needed = Cantidad de experiencia a acumular necesaria por el jugador para subir de nivel.
    - exp_base = Experiencia con la que el jugador empieza un nivel. Usado para cálculo de exp_needed del nivel al que se ha subido.



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


### Reward ###
## data/system/reward.bash
- reward_exp() = Da experiencia basado en nivel
- reward_drop() = % de dropear objetos
    - drop_chances = Array 0-100 usado para randomizar drops
    - drop_randomized = Get a random number from the previous array 0-100
    - value = Valor de un bucle For para comprobar todo el array
- reward_gold() = Cuánto oro se dropea. Totalmente aleatorio (moneda del vicio)
    - gold_chances = Array de 0-100
    - drop_gold_randomized = Número aleatorio del array para sumártelo como oro
    - gold = Cuánto oro tienes


### Drop ###
## data/basic/drop.bash
Es un array con los objetos para dropear y su index


### Tienda ###
## data/basic/shop.bash
- tienda() = El nivel especial Tienda, donde compras o vendes objetos.
    - shop_option = Array de 0-100
    - random_shop_option = Coge un número aleatorio del array shop_option
    

### Santuario ###
## data/basic/shrine.bash


<h1> Texto </h1>
- text_1 = Array con líneas en Español
