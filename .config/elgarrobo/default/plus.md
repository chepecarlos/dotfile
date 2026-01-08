---
- nombre: Tutorial
  titulo: Tutorial
  key: 1
  accion: entrar_folder
  opciones:
    folder: /tutorial
- nombre: Temperatura Estudio
  titulo: '{}⁰C'
  key: 4
  imagen_opciones:
    fondo: '#ae2900ff'
  titulo_opciones:
    mqtt: sensor/estudio/temperatura
- nombre: humedad Estudio
  titulo: '{}%'
  key: 8
  imagen_opciones:
    fondo: '#0003aeff'
  titulo_opciones:
    mqtt: sensor/estudio/humedad
- nombre: Derecha
  key: deslizar_derecha_1
  accion: siquiente_pagina
- nombre: Siquiente
  key: deslizar_izquierda_1
  accion: anterior_pagina
- nombre: Mute AT2035
  key: dial_1
  accion: mute
  opciones:
    dispositivo: AT2035
- nombre: Mute Umaru
  key: dial_2
  accion: mute
  opciones:
    dispositivo: Umaru
- nombre: Mute Ryuk
  key: dial_3
  accion: mute
  opciones:
    dispositivo: Ryuk
- nombre: Umaru Centro
  key: dial_4
  accion: volumen
  opciones:
    dispositivo: Ryuk
    opcion: balance
    valor: 50
- nombre: +1% Umaru
  key: dial_derecho_1
  accion: volumen
  opciones:
    dispositivo: AT2035
    opcion: incremento
    valor: 1
- nombre: +1% Umaru
  key: dial_derecho_2
  accion: volumen
  opciones:
    dispositivo: Umaru
    opcion: incremento
    valor: 1
- nombre: +1% Ryuk
  key: dial_derecho_3
  accion: volumen
  opciones:
    dispositivo: Ryuk
    opcion: incremento
    valor: 1
- nombre: Ryuk Derecha
  key: dial_derecho_4
  accion: volumen
  opciones:
    dispositivo: Ryuk
    opcion: balance
    valor: 100
- nombre: -1% Umaru
  key: dial_izquierdo_1
  accion: volumen
  opciones:
    dispositivo: AT2035
    opcion: incremento
    valor: -1
- nombre: -1% Umaru
  key: dial_izquierdo_2
  accion: volumen
  opciones:
    dispositivo: Umaru
    opcion: incremento
    valor: -1
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
- nombre: Mute Umaru
  key: touchscreen_1
  accion: mute
  opciones:
    dispositivo: AT2035
  cargar_titulo:
    archivo: data/pulse
    atributo: AT2035
  imagen: /pulse/mic.png
  titulo_opciones:
    tamanno_minimo: 30
- nombre: Mute Umaru
  key: touchscreen_2
  accion: mute
  opciones:
    dispositivo: Umaru
  cargar_titulo:
    archivo: data/pulse
    atributo: Umaru
  imagen: /pulse/Umaru.png
  titulo_opciones:
    tamanno_minimo: 30
- nombre: Mute Ryuk
  key: touchscreen_3
  accion: mute
  opciones:
    dispositivo: Ryuk
  cargar_titulo:
    archivo: data/pulse
    atributo: Ryuk
  imagen: /pulse/Ryuk.png
  titulo_opciones:
    tamanno_minimo: 30
- nombre: Mute Ryuk
  key: touchscreen_4
  accion: mute
  opciones:
    dispositivo: ElGarrobo
  cargar_titulo:
    archivo: data/pulse
    atributo: ElGarrobo
  imagen: /pulse/derpy.png
  titulo_opciones:
    tamanno_minimo: 30
...
