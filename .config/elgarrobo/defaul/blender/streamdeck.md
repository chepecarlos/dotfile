---
- nombre: Borrar
  key: 0
  accion: teclas
  opciones:
    teclas:
    - x
  imagen: ./borrar.png
- nombre: Concatenar
  key: 1
  accion: teclas
  opciones:
    teclas:
    - shift
    - c
  imagen: ./concatenar.png
- nombre: TrimAll
  key: 2
  accion: teclas
  opciones:
    teclas:
    - shift
    - t
  imagen: ./trim_all.png
- nombre: Texto
  titulo: Texto
  key: 3
  accion: teclas
  opciones:
    teclas:
    - ctrl
    - q
- nombre: Marka
  key: 4
  accion: macro
  opciones:
  - accion: teclas
    opciones:
      teclas:
      - m
  - accion: teclas
    opciones:
      teclas:
      - f2
  imagen: ./marcador/maker.png
- nombre: Hueva
  key: 5
  accion: teclas
  opciones:
    teclas:
    - ctrl
    - shift
    - U
  imagen: ./hueva.png
- nombre: Desacer
  key: 6
  accion: teclas
  opciones:
    teclas:
    - ctrl
    - z
  imagen: ./desacer.png
- nombre: Play
  key: 7
  accion: teclas
  opciones:
    teclas:
    - space
  imagen: ./play.png
- nombre: Mover
  key: 8
  accion: teclas
  opciones:
    teclas:
    - g
  imagen: ./mover.png
- nombre: fade
  key: 9
  accion: entrar_folder
  opciones:
    folder: ./fade
  imagen: ./fade_in.png
- nombre: Puntero
  key: 10
  accion: macro
  opciones:
  - accion: teclas
    opciones:
      teclas:
      - shift
      - space
  - accion: teclas
    opciones:
      teclas:
      - w
  imagen: ./puntero.png
- nombre: Nabaja
  key: 11
  accion: macro
  opciones:
  - accion: teclas
    opciones:
      teclas:
      - shift
      - space
  - accion: teclas
    opciones:
      teclas:
      - k
  imagen: ./corta_duro.png
- nombre: Salvar
  key: 12
  accion: teclas
  opciones:
    teclas:
    - ctrl
    - s
  imagen: ./guardar.png
- nombre: AjusTime
  key: 14
  accion: teclas
  opciones:
    teclas:
    - ctrl
    - alt
    - p
  imagen: ./ajuste_time.png
- nombre: Logos
  titulo: Logos
  key: 15
  accion: entrar_folder
  opciones:
    folder: ./logo
- nombre: Clips
  titulo: Clips
  key: 16
  accion: entrar_folder
  opciones:
    folder: ./clips
- nombre: Animar
  titulo: Animar
  key: 17
  accion: entrar_folder
  opciones:
    folder: ./animar
- nombre: aliniacion y zoom
  key: 19
  accion: entrar_folder
  opciones:
    folder: ./alineacion_zoom
  imagen: ./aliniar.png
- nombre: Duplicar
  titulo: Duplicar
  key: 20
  accion: teclas
  opciones:
    teclas:
    - d
  imagen: ./duplicar.png
- nombre: Maker
  titulo: Maker
  key: 21
  accion: entrar_folder
  opciones:
    folder: ./marcador
  imagen: ./marcador/maker.png
- nombre: Ajustar Tiempo
  titulo: AjusTiempo
  key: 22
  accion: teclas
  opciones:
    teclas:
    - ctrl
    - alt
    - p
  imagen: ./ajuste_time.png
- nombre: Import
  titulo: Import
  key: 23
  accion: teclas
  opciones:
    teclas:
    - ctrl
    - shift
    - i
- nombre: Navegación
  titulo: Navegación
  key: 24
  accion: entrar_folder
  opciones:
    folder: ./navegacion
- nombre: Agrupar
  titulo: agrupar
  key: 25
  accion: teclas
  opciones:
    teclas:
    - ctrl
    - g
- nombre: Agrupar
  titulo: agrupar
  key: 26
  accion: teclas
  opciones:
    teclas:
    - p
- nombre: Agrupar
  titulo: agrupar
  key: 27
  accion: teclas
  opciones:
    teclas:
    - alt
    - p
- nombre: Snap
  titulo: Snap
  key: 28
  accion: teclas
  opciones:
    teclas:
    - shift
    - s
- nombre: Panel
  key: 30
  accion: teclas
  opciones:
    teclas:
    - n
  imagen: ./panel.png
- nombre: Mute
  key: 31
  accion: teclas
  opciones:
    teclas:
    - h
  imagen: ./ocultar.png
- nombre: Añadir
  titulo: Añadir
  key: 32
  accion: teclas
  opciones:
    teclas:
    - shift
    - a
  imagen: ./añadir.png
- nombre: Corta Duro
  key: 33
  accion: teclas
  opciones:
    teclas:
    - shift
    - k
  imagen: ./corta_duro.png
- nombre: Numero 0
  titulo: Numero 0
  key: 34
  accion: teclas
  opciones:
    teclas:
    - num0
- nombre: Cursor
  titulo: Cursor
  key: 35
  accion: macro
  opciones:
  - accion: teclas
    opciones:
      teclas:
      - shift
      - space
  - accion: teclas
    opciones:
      teclas:
      - w
- nombre: Nabaja
  titulo: Nabaja
  key: 36
  accion: macro
  opciones:
  - accion: teclas
    opciones:
      teclas:
      - shift
      - space
  - accion: teclas
    opciones:
      teclas:
      - k
- nombre: Trim
  titulo: Trim
  key: 37
  accion: macro
  opciones:
  - accion: teclas
    opciones:
      teclas:
      - shift
      - space
  - accion: teclas
    opciones:
      teclas:
      - shift
      - ctrl
      - alt
      - T
- nombre: Sonido
  key: 38
  accion: entrar_folder
  opciones:
    folder: ./sonidos
  imagen: ./sonido.png
- nombre: Musica
  key: 40
  accion: entrar_folder
  opciones:
    folder: ./musica
  imagen: ./musica.png
- nombre: Menu
  titulo: Menu
  key: 45
  accion: teclas
  opciones:
    teclas:
    - shift
    - space
  imagen: ./menu.png
- nombre: Velocidad
  key: 46
  accion: entrar_folder
  opciones:
    folder: ./velocidad
  imagen: ./velocidad.png
- nombre: config
  titulo: config
  key: 49
  accion: entrar_folder
  opciones:
    folder: ./config
- nombre: TrimI
  titulo: Trim I
  key: 56
  accion: teclas
  opciones:
    teclas:
    - i
  imagen: ./trim_i.png
- nombre: TrimD
  titulo: Trim D
  key: 57
  accion: teclas
  opciones:
    teclas:
    - o
  imagen: ./trim_d.png
- nombre: Inserta KeyFrame
  titulo: Inserta\nKeyFrame
  imagen_opciones:
    fondo: #00b500
  key: 13
  accion: macro
  opciones:
    - accion: escribir_archivo
      opciones:
        archivo: /home/chepecarlos/.config/pluginBlenderALSW/data/animar.json
        data:
            - transform.scale_x: null
              transform.scale_y: null
              transform.offset_x: null
              transform.offset_y: null
              transform.rotation: null
              cursor: 0
    - accion: teclas
      opciones:
        teclas:
        - ctrl
        - shift
        - Q
...
