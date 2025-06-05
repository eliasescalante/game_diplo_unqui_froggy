# Diplomatura en Desarrollo de Videojuegos - UNQui
# Materia: Introducción a los Videojuegos / Elementos Básicos de Programación de Videojuegos


## Alumno: Elias Escalante
## Correo: deguelelias@gmail.com
## Comisión: Virtual

----

## Assets utilizados:

- Todos los sprite fueron de creación propia utilizando Piskel (https://www.piskelapp.com/)
- Musica de fondo -> Jeremy Blake - Powerup! ♫ NO COPYRIGHT 8-bit Music (https://drive.google.com/file/d/1Dq0g0WWmcFCnzv1sXxB5iolx6AVe2CX5/view)
- Sonido de golpe -> Elabrocación propia

##  Características del Juego

- Movimiento por celdas de 16x16 píxeles.
- Resolución de 288x208 píxeles (horizontal) resolucion orginal. -> pero el juego esta escalado. 
- Mecánicas clásicas de Frogger: evitar obstáculos y alcanzar objetivos.
- Sistema de vidas y detección de colisiones.
- Interfaz HUD con contador de vidas.
- Agregue musica de fondo y sonidos para las colisiones.
- Arme el flujo entero del juego (inicio -> nivel -> winlose)

----

##  Cambios relevantes en los script:

- **game_state_manager.gd** : solo gestiona el lanzamiento de las escenas de ganar o perder.
- **Player.gd** : agregue a player en "group"  para poder identificar mejor cuando hay colisiones dentro de las areas de house y enemy
- **house.gd** y **enemy.gd**: no se porque tuve problemas con las conexiones de las señales asi que tuve que declararlas directamente en el código.
- **player.gd** : tuve problemas con el movimiento y actualización de animaciones asi que use unas variables auxiliares para manejar la actualización de la animación de movimiento del player
- **player.gd** : arme la función "take_damage()" que no solo reproduce el sonido del golpe al jugador si no que le quita una vida y guarda el valor y lo pasa como argumento de la funciona "update_hearts(lives)" al script hud.gd
- **player.gd** : use los metodos de godot "get_action_strength" para identificar los input del player y los normalizo para que la velocidad sea constante.
-**enemy.gd** : use la función "_process" para lupear el movimiento de los enemy en el juego, arme un funciona para el movimiento de los fantasmitas, paso por parametro "delta" y llamo esa función dentro de "-process".
- **Audio_manager.tscn** : arme una escena para el audio y lo cargue en el autoload del proyecto para usar sus nodos sin problemas.



###  Link al repo : https://github.com/eliasescalante/game_diplo_unqui_froggy.git
###  Capturas del juego:

- ![Texto alternativo](https://github.com/eliasescalante/game_diplo_unqui_froggy/blob/main/src/assets/capturas/intro_cap.png)
- ![Texto alternativo](https://github.com/eliasescalante/game_diplo_unqui_froggy/blob/main/src/assets/capturas/level_cap.png)

### Para probar el juego en itch.io -> https://elias-escalante.itch.io/frogy-version-alternativa-de-frogger