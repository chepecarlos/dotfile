---
- nombre: Ruido
  titulo: Ruido
  key: 1
  accion: mqtt
  opciones:
    mensaje: '1'
    topic: alsw/fondoOBS/ruido
  imagen_opciones:
    fondo: '#a2d400'
- nombre: Random Colores FondoOBS
  key: 2
  accion: macro
  opciones:
  - accion: mqtt
    opciones:
      topic: alsw/fondoOBS/color/fondo
      mensaje: random
  - accion: mqtt
    opciones:
      topic: alsw/fondoOBS/color/linea
      mensaje: random
  - accion: mqtt
    opciones:
      topic: alsw/fondoOBS/color/base
      mensaje: random
- nombre: Cambiar Chat Youtube
  key: 3
  accion: mostrar_ventana
  opciones:
    titulo: live_char?
...
