# 🐸 Proyecto Godot - Frogger (Versión Alternativa)

Este proyecto fue desarrollado como parte de la **Diplomatura en Desarrollo de Videojuegos** de la **Universidad Nacional de Quilmes (UNQui)**. El objetivo fue recrear una versión alternativa del clásico estilo *Frogger*, adaptando su lógica y presentación para trabajar en un eje horizontal (X) en lugar del vertical (Y).

## 🎯 Objetivo

Reutilizar el proyecto "juego espejo" trabajado en clase y convertirlo en una nueva versión que:

- Mantenga las mecánicas básicas del original.
- Adapte el movimiento del personaje y los obstáculos al eje horizontal.
- Incorpore assets visuales originales creados por el alumno.
- Sea completamente funcional y jugable.

## 🕹️ Características del Juego

- Movimiento por celdas de 16x16 píxeles.
- Resolución de 288x208 píxeles (horizontal).
- Mecánicas clásicas de Frogger: evitar obstáculos y alcanzar objetivos.
- Sistema de vidas y detección de colisiones.
- Interfaz HUD con contador de vidas.
- Recursos visuales completamente originales.

## 📁 Estructura del Proyecto

**Scripts principales:**
- `jugador.gd`: control del personaje.
- `hud.gd`: interfaz gráfica.
- `game_state_manager.gd`: estados del juego.
- `casas_manager.gd`, `casa.gd`: lógica de objetivos.
- `linea_obstaculo.gd`, `spawner_obstaculos.gd`: generación de obstáculos.

**Escenas clave:**
- `main.tscn`: escena principal.
- `jugador.tscn`: personaje.
- `hud.tscn`: interfaz.
- `mapa.tscn`, `casa.tscn`, `obstáculo.tscn`, entre otras.

## 🎨 Arte y Assets

Todos los recursos gráficos fueron creados por el alumno específicamente para este proyecto. Se incluyen:

- Sprite del personaje en estado quieto, movimiento y golpeado.
- Íconos de vidas.
- Casa (meta) y versión ocupada.
- Obstáculos/vehículos.
- Tilemap completo.

## 🛠️ Herramientas Utilizadas

- [Godot Engine 4.x](https://godotengine.org/)
- Aseprite / Piskel (para pixel art)
- Git & GitHub

## 📅 Fechas Importantes

- Primera entrega intermedia: 26 de Mayo  
- Segunda entrega intermedia: 2 de Junio  
- Entrega final: 9 de Junio  
- Recuperatorio: 16 de Junio  

---

### 👤 Autor

**Elías [Tu Apellido]**  
Estudiante de la Diplomatura en Desarrollo de Videojuegos - UNQui  
Desarrollador Backend | Entusiasta del pixel art y diseño de juegos

---

¡Gracias por visitar el repo! 🎮
