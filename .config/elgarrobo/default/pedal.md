---
- nombre: Cambiar OBS Previsualización
  key: 1
  accion: mostrar_ventana
  opciones:
    titulo: (Previsualización)
- nombre: Random Colores FondoOBS
  key: 2
  accion: macro
  opciones:
  - accion: mqtt
    opciones:
      topic: alsw/fondoOBS/color/fondo
      mensaje: random
    __estado: null
  - accion: mqtt
    opciones:
      topic: alsw/fondoOBS/color/linea
      mensaje: random
    __estado: null
  - accion: mqtt
    opciones:
      topic: alsw/fondoOBS/color/base
      mensaje: random
    __estado: null
- nombre: Cambiar Chat Youtube
  key: '3'
  accion: mostrar_ventana
  opciones:
    titulo: live_char?
  titulo: null
...
