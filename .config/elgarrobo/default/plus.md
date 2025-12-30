---
- nombre: Tutorial
  titulo: Tutorial
  key: 1
  accion: entrar_folder
  opciones:
    folder: /tutorial
- nombre: Mute AT2035
  key: dial_1
  accion: mute
  opciones:
    dispositivo: AT2035
- nombre: Mute Ryuk
  key: dial_3
  accion: mute
  opciones:
    dispositivo: Ryuk
- nombre: +1% Ryuk
  key: dial_derecho_3
  accion: volumen
  opciones:
    dispositivo: Ryuk
    opcion: incremento
    valor: 1
- nombre: -1% Ryuk
  key: dial_izquierdo_3
  accion: volumen
  opciones:
    dispositivo: Ryuk
    opcion: incremento
    valor: -1
- nombre: Ryuk Izquierda
  key: dial_izquierdo_4
  accion: volumen
  opciones:
    dispositivo: Ryuk
    opcion: balance
    valor: 0
- nombre: Umaru Centro
  key: dial_4
  accion: volumen
  opciones:
    dispositivo: Ryuk
    opcion: balance
    valor: 50
- nombre: Ryuk Derecha
  key: dial_derecho_4
  accion: volumen
  opciones:
    dispositivo: Ryuk
    opcion: balance
    valor: 100
---