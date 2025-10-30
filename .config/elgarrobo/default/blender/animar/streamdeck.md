---
- nombre: Zoon
  titulo: Zoon
  key: 2
  accion: macro
  opciones:
  - accion: escribir_archivo
    opciones:
      archivo: /home/chepecarlos/.config/pluginBlenderALSW/data/animar.json
      data:
      - transform.scale_x: null
        transform.scale_y: null
        cursor: -1
      - transform.scale_x: null
        transform.scale_y: null
        cursor: 1
      - transform.scale_x: 2.5
        transform.scale_y: 2.5
        cursor: 0
  - accion: teclas
    opciones:
      teclas:
      - ctrl
      - shift
      - Q
- nombre: Configurar Texto
  titulo: Configurar\nTexto
  key: 3
  accion: macro
  opciones:
  - accion: escribir_archivo
    opciones:
      archivo: /home/chepecarlos/.config/pluginBlenderALSW/data/animar.json
      data:
      - font_size: 120
        use_outline: true
        outline_width: 0.6
        inicio: 0
        fuente: /home/SudoData/ChepeCarlos@alsw.net/2.Contenido/1.Biblioteca/4.Global/2.Fuentes/2.Roboto/Roboto-Black.ttf
  - accion: teclas
    opciones:
      teclas:
      - ctrl
      - shift
      - Q
- nombre: Configurar Tiktok
  titulo: Configurar\nTiktok
  key: 7
  accion: macro
  opciones:
  - accion: escribir_archivo
    opciones:
      archivo: /home/chepecarlos/.config/pluginBlenderALSW/data/animar.json
      data:
      - transform.rotation: 90
        transform.scale_x: 1.03
        transform.scale_y: 1.03
        inicio: 0
  - accion: teclas
    opciones:
      teclas:
      - ctrl
      - shift
      - Q
- nombre: Borrar Animacion
  titulo: Borrar\nAnimacion
  key: 8
  accion: macro
  opciones:
  - accion: escribir_archivo
    opciones:
      archivo: /home/chepecarlos/.config/pluginBlenderALSW/data/animar.json
      data:
      - borrar: true
  - accion: teclas
    opciones:
      teclas:
      - ctrl
      - shift
      - Q
- nombre: Rotar
  titulo: Rotar
  key: 9
  accion: macro
  opciones:
  - accion: escribir_archivo
    opciones:
      archivo: /home/chepecarlos/.config/pluginBlenderALSW/data/animar.json
      data:
      - transform.rotation: 0
  - accion: teclas
    opciones:
      teclas:
      - ctrl
      - shift
      - Q
...
