---
- nombre: Cambiar Algoritmo
  titulo: Algoritmo
  key: 1
  accion: entrar_folder
  opciones:
    folder: ./algoritmo
  imagen: ./fondoobs.png
- nombre: Cambiar FPS
  titulo: FPS
  key: 2
  accion: entrar_folder
  opciones:
    folder: ./fps
  imagen_opciones:
    fondo: '#00b500'
- nombre: Sub
  key: 4
  accion: mqtt
  opciones:
    topic: alsw/subreal/activo
    mensaje: c
  imagen: ./display.png
- nombre: reiniciar
  titulo: reiniciar
  key: 5
  accion: mqtt
  opciones:
    topic: alsw/fondoOBS/reiniciar
    mensaje: '1'
- nombre: Luces
  key: 6
  accion: mqtt
  opciones:
    topic: alsw/estudio/estado/1
    mensaje: c
  imagen: ./izquierda.png
  imagen_opciones:
    fondo: '#00ffff'
- nombre: Luces
  key: 7
  accion: mqtt
  opciones:
    topic: alsw/estudio/estado/3
    mensaje: c
  imagen: ./centro.png
  imagen_opciones:
    fondo: '#00ffff'
- nombre: Luces
  key: 8
  accion: mqtt
  opciones:
    topic: alsw/estudio/estado/2
    mensaje: c
  imagen: ./derecha.png
  imagen_opciones:
    fondo: '#00ffff'
- nombre: Luces
  key: 9
  accion: mqtt
  opciones:
    topic: alsw/estudio/estado/t
    mensaje: c
  imagen: ./Luces.png
  imagen_opciones:
    fondo: '#00ffff'
- nombre: Color Defaul
  titulo: Color\nDefaul
  key: 10
  accion: macro
  opciones:
  - accion: mqtt
    opciones:
      topic: alsw/fondoOBS/color/base
      mensaje: aqua
  - accion: mqtt
    opciones:
      topic: alsw/fondoOBS/color/fondo
      mensaje: negro
  - accion: mqtt
    opciones:
      topic: alsw/fondoOBS/color/fondo
      mensaje: negro
  - accion: mqtt
    opciones:
      topic: alsw/fondoOBS/reiniciar
      mensaje: '1'
- nombre: Mostrar Alerta
  titulo: Alerta\nMostrar
  key: 11
  accion: mqtt
  opciones:
    topic: alsw/notificacion/dibujar
    mensaje: true
- nombre: Ocultar Alerta
  titulo: Alerta\nOcultar
  key: 12
  accion: mqtt
  opciones:
    topic: alsw/notificacion/dibujar
    mensaje: false
- nombre: Mostrar Presente
  titulo: Presente\nMostrar
  key: 13
  accion: mqtt
  opciones:
    topic: alsw/notificacion/presente_mostar
    mensaje: true
- nombre: Ocultar Presente
  titulo: Presente\nOcultar
  key: 14
  accion: mqtt
  opciones:
    topic: alsw/notificacion/presente_mostar
    mensaje: false
- nombre: Base Randon
  titulo: Base
  key: 30
  accion: mqtt
  opciones:
    topic: alsw/fondoOBS/color/base
    mensaje: random
  imagen_opciones:
    imagen: ./color.png
- nombre: color aqua
  titulo: Base
  key: 16
  accion: mqtt
  opciones:
    topic: alsw/fondoOBS/color/base
    mensaje: '#008080'
  imagen_opciones:
    fondo: '#008080'
- nombre: color rojo
  titulo: Base
  key: 17
  accion: mqtt
  opciones:
    topic: alsw/fondoOBS/color/base
    mensaje: '#ff0000'
  imagen_opciones:
    fondo: '#ff0000'
- nombre: color Verde
  titulo: Base
  key: 18
  accion: mqtt
  opciones:
    topic: alsw/fondoOBS/color/base
    mensaje: '#00ff00'
  imagen_opciones:
    fondo: '#00ff00'
- nombre: color Azul
  titulo: Base
  key: 19
  accion: mqtt
  opciones:
    topic: alsw/fondoOBS/color/base
    mensaje: '#0000ff'
  imagen_opciones:
    fondo: '#0000ff'
- nombre: Linea Randon
  titulo: Linea
  key: 20
  accion: mqtt
  opciones:
    topic: alsw/fondoOBS/color/linea
    mensaje: random
  imagen_opciones:
    imagen: ./color.png
- nombre: Linea Aqua
  titulo: Linea
  key: 21
  accion: mqtt
  opciones:
    topic: alsw/fondoOBS/color/linea
    mensaje: '#008080'
  imagen_opciones:
    fondo: '#008080'
- nombre: Linea Rojo
  titulo: Linea
  key: 22
  accion: mqtt
  opciones:
    topic: alsw/fondoOBS/color/linea
    mensaje: '#ff0000'
  imagen_opciones:
    fondo: '#ff0000'
- nombre: Linea Verde
  titulo: Linea
  key: 23
  accion: mqtt
  opciones:
    topic: alsw/fondoOBS/color/linea
    mensaje: '#00ff00'
  imagen_opciones:
    fondo: '#00ff00'
- nombre: Linea Azul
  titulo: Linea
  key: 24
  accion: mqtt
  opciones:
    topic: alsw/fondoOBS/color/linea
    mensaje: '#0000ff'
  imagen_opciones:
    fondo: '#0000ff'
- nombre: Fondo Randon
  titulo: Fondo
  key: 25
  accion: mqtt
  opciones:
    topic: alsw/fondoOBS/color/fondo
    mensaje: random
  imagen_opciones:
    imagen: ./color.png
- nombre: Fondo Acua
  titulo: Fondo
  key: 26
  accion: mqtt
  opciones:
    topic: alsw/fondoOBS/color/fondo
    mensaje: aqua
  imagen_opciones:
    fondo: '#008080'
- nombre: Fondo Rojo
  titulo: Fondo
  key: 27
  accion: mqtt
  opciones:
    topic: alsw/fondoOBS/color/fondo
    mensaje: rojo
  imagen_opciones:
    fondo: '#ff0000'
- nombre: Fondo Verde
  titulo: Fondo
  key: 28
  accion: mqtt
  opciones:
    topic: alsw/fondoOBS/color/fondo
    mensaje: '#00ff00'
  imagen_opciones:
    fondo: '#00ff00'
- nombre: Fondo Azul
  titulo: Fondo
  key: 29
  accion: mqtt
  opciones:
    topic: alsw/fondoOBS/color/fondo
    mensaje: '#0000ff'
  imagen_opciones:
    fondo: '#0000ff'
- nombre: color negro
  titulo: Base
  key: 45
  accion: mqtt
  opciones:
    topic: alsw/fondoOBS/color/base
    mensaje: '#000000'
  imagen_opciones:
    fondo: '#000000'
- nombre: color blanco
  titulo: Base
  key: 31
  accion: mqtt
  opciones:
    topic: alsw/fondoOBS/color/base
    mensaje: '#ffffff'
  imagen_opciones:
    fondo: '#ffffff'
- nombre: color Gris 50%
  titulo: Base
  key: 32
  accion: mqtt
  opciones:
    topic: alsw/fondoOBS/color/base
    mensaje: '#808080'
  imagen_opciones:
    fondo: '#808080'
- nombre: Linea Negro
  titulo: Linea
  key: 35
  accion: mqtt
  opciones:
    topic: alsw/fondoOBS/color/linea
    mensaje: '#000000'
  imagen_opciones:
    fondo: '#000000'
- nombre: Linea Blanco
  titulo: Linea
  key: 36
  accion: mqtt
  opciones:
    topic: alsw/fondoOBS/color/linea
    mensaje: '#ffffff'
  imagen_opciones:
    fondo: '#ffffff'
- nombre: Linea Gris 50%
  titulo: Linea
  key: 37
  accion: mqtt
  opciones:
    topic: alsw/fondoOBS/color/linea
    mensaje: '#808080'
  imagen_opciones:
    fondo: '#808080'
- nombre: Fondo Negro
  titulo: Fondo
  key: 40
  accion: mqtt
  opciones:
    topic: alsw/fondoOBS/color/fondo
    mensaje: '#000000'
  imagen_opciones:
    fondo: '#000000'
- nombre: Fondo Blanco
  titulo: Fondo
  key: 41
  accion: mqtt
  opciones:
    topic: alsw/fondoOBS/color/fondo
    mensaje: '#ffffff'
  imagen_opciones:
    fondo: '#ffffff'
- nombre: Fondo Gris 50%
  titulo: Fondo
  key: 42
  accion: mqtt
  opciones:
    topic: alsw/fondoOBS/color/fondo
    mensaje: '#808080'
  imagen_opciones:
    fondo: '#808080'
- nombre: color Lila
  titulo: Base
  key: 45
  accion: mqtt
  opciones:
    topic: alsw/fondoOBS/color/base
    mensaje: '#800080'
  imagen_opciones:
    fondo: '#800080'
- nombre: color Amarillo
  titulo: Base
  key: 46
  accion: mqtt
  opciones:
    topic: alsw/fondoOBS/color/base
    mensaje: '#ffff00'
  imagen_opciones:
    fondo: '#ffff00'
- nombre: color Rosa
  titulo: Base
  key: 47
  accion: mqtt
  opciones:
    topic: alsw/fondoOBS/color/base
    mensaje: '#ff00ff'
  imagen_opciones:
    fondo: '#ff00ff'
- nombre: color Naranja
  titulo: Base
  key: 48
  accion: mqtt
  opciones:
    topic: alsw/fondoOBS/color/base
    mensaje: '#fb6312'
  imagen_opciones:
    fondo: '#fb6312'
- nombre: color Verde 2
  titulo: Base
  key: 49
  accion: mqtt
  opciones:
    topic: alsw/fondoOBS/color/base
    mensaje: '#00b500'
  imagen_opciones:
    fondo: '#00b500'
- nombre: Linea Lila
  titulo: Linea
  key: 50
  accion: mqtt
  opciones:
    topic: alsw/fondoOBS/color/linea
    mensaje: '#800080'
  imagen_opciones:
    fondo: '#800080'
- nombre: Linea Amarillo
  titulo: Linea
  key: 51
  accion: mqtt
  opciones:
    topic: alsw/fondoOBS/color/linea
    mensaje: '#ffff00'
  imagen_opciones:
    fondo: '#ffff00'
- nombre: Linea Rosado
  titulo: Linea
  key: 52
  accion: mqtt
  opciones:
    topic: alsw/fondoOBS/color/linea
    mensaje: '#ff00ff'
  imagen_opciones:
    fondo: '#ff00ff'
- nombre: Linea Naranja
  titulo: Linea
  key: 53
  accion: mqtt
  opciones:
    topic: alsw/fondoOBS/color/linea
    mensaje: '#fb6312'
  imagen_opciones:
    fondo: '#fb6312'
- nombre: Linea Verde 2
  titulo: Linea
  key: 54
  accion: mqtt
  opciones:
    topic: alsw/fondoOBS/color/linea
    mensaje: '#00b500'
  imagen_opciones:
    fondo: '#00b500'
- nombre: Fondo Lila
  titulo: Fondo
  key: 55
  accion: mqtt
  opciones:
    topic: alsw/fondoOBS/color/fondo
    mensaje: '#800080'
  imagen_opciones:
    fondo: '#800080'
- nombre: Fondo Amarillo
  titulo: Fondo
  key: 56
  accion: mqtt
  opciones:
    topic: alsw/fondoOBS/color/fondo
    mensaje: '#ffff00'
  imagen_opciones:
    fondo: '#ffff00'
- nombre: Fondo Rosa
  titulo: Fondo
  key: 57
  accion: mqtt
  opciones:
    topic: alsw/fondoOBS/color/fondo
    mensaje: '#ff00ff'
  imagen_opciones:
    fondo: '#ff00ff'
- nombre: Fondo Naranja
  titulo: Fondo
  key: 58
  accion: mqtt
  opciones:
    topic: alsw/fondoOBS/color/fondo
    mensaje: '#fb6312'
  imagen_opciones:
    fondo: '#fb6312'
- nombre: Fondo Verde 2
  titulo: Fondo
  key: 59
  accion: mqtt
  opciones:
    topic: alsw/fondoOBS/color/fondo
    mensaje: '#00b500'
  imagen_opciones:
    fondo: '#00b500'
- nombre: Fondo 60 fps
  titulo: 60 fps
  key: 60
  accion: mqtt
  opciones:
    topic: alsw/fondoOBS/color/fondo
    mensaje: '#00b500'
  imagen_opciones:
    fondo: '#00b500'
- nombre: Normal
  titulo: Normal
  key: 61
  accion: mqtt
  opciones:
    topic: alsw/fondoOBS/modo
    mensaje: normal
- nombre: Ruido
  titulo: Ruido
  key: 62
  accion: mqtt
  opciones:
    topic: alsw/fondoOBS/modo
    mensaje: ruido
- nombre: Fondo +1 fps
  titulo: +1 fps
  key: 65
  accion: mqtt
  opciones:
    topic: alsw/fondoOBS/fps/cambio
    mensaje: '1'
  imagen_opciones:
    fondo: '#ff0000'
- nombre: Fondo +5 fps
  titulo: +5 fps
  key: 66
  accion: mqtt
  opciones:
    topic: alsw/fondoOBS/fps/cambio
    mensaje: '5'
  imagen_opciones:
    fondo: '#ff9b00'
- nombre: Fondo +10 fps
  titulo: +10 fps
  key: 67
  accion: mqtt
  opciones:
    topic: alsw/fondoOBS/fps/cambio
    mensaje: '10'
  imagen_opciones:
    fondo: '#ffff00'
- nombre: Fondo -1 fps
  titulo: -1 fps
  key: 70
  accion: mqtt
  opciones:
    topic: alsw/fondoOBS/fps/cambio
    mensaje: '-1'
  imagen_opciones:
    fondo: '#ff0000'
- nombre: Fondo -5 fps
  titulo: -5 fps
  key: 71
  accion: mqtt
  opciones:
    topic: alsw/fondoOBS/fps/cambio
    mensaje: '-5'
  imagen_opciones:
    fondo: '#ff9b00'
- nombre: Fondo -10 fps
  titulo: -10 fps
  key: 72
  accion: mqtt
  opciones:
    topic: alsw/fondoOBS/fps/cambio
    mensaje: '-10'
  imagen_opciones:
    fondo: '#ffff00'
- nombre: Arcoiris
  titulo: Arcoiris
  key: 78
  accion: mqtt
  opciones:
    topic: alsw/fondoOBS/arcoiris
    mensaje: 'true'
- nombre: No Arcoiris
  titulo: No\nArcoiris
  key: 79
  accion: mqtt
  opciones:
    topic: alsw/fondoOBS/arcoiris
    mensaje: 'false'
...
