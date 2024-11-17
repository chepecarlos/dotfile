---
- nombre: Cambiar OBS Previsualización
  key: 0
  accion: mostrar_ventana
  opciones:
    titulo: "(Previsualización)"
- nombre: Random Colores FondoOBS
  key: 1
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
  key: 2
  accion: mostrar_ventana
  opciones:
    titulo: "live_char?"
---