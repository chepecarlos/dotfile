---
- nombre: IDE's
  titulo: IDE's
  key: 1
  accion: entrar_folder
  opciones:
    folder: ./ide
  imagen: ./ide/ide.png
- nombre: Link
  titulo: Link's
  key: 2
  accion: entrar_folder
  opciones:
    folder: ./link
  imagen: /link/link.gif
  indice: 7
- nombre: APP
  titulo: APP
  key: 3
  accion: entrar_folder
  opciones:
    folder: ./binarios
  imagen: ./binarios/cammy.gif
  imagen_opciones:
    fondo: '#FFFFFF'
  indice: 4
- nombre: Recurso
  titulo: Recurso
  key: 4
  accion: entrar_folder
  opciones:
    folder: ./recurso
  imagen: ./recurso/ryuk_pc.gif
  indice: 3
- nombre: Code
  titulo: Code
  key: 5
  accion: entrar_folder
  opciones:
    folder: /ide/code
  imagen: /ide/code/code.png
- nombre: Youtube
  titulo: Youtube
  key: 6
  accion: entrar_folder
  opciones:
    folder: ./youtube
  imagen: ./youtube/youtube.gif
  indice: 6
- nombre: Notion
  key: 8
  accion: entrar_folder
  opciones:
    folder: ./notion
  imagen: ./notion/notion.png
- nombre: Extras
  titulo: Extras
  key: 9
  accion: entrar_folder
  opciones:
    folder: ./extras
- nombre: Blender
  titulo: Blender
  key: 10
  accion: entrar_folder
  opciones:
    folder: ./blender
  imagen: ./blender/blender.png
- nombre: animacion3D
  titulo: animacion3D
  key: 11
  accion: entrar_folder
  opciones:
    folder: ./animacion3D
- nombre: inkscape
  titulo: Inkscape
  key: 12
  accion: entrar_folder
  opciones:
    folder: ./inkscape
  imagen: ./inkscape/inkscape.png
- nombre: gimp
  titulo: Gimp
  key: 13
  accion: entrar_folder
  opciones:
    folder: ./gimp
  imagen: ./gimp/gimp.png
- nombre: FreeCAD
  titulo: FreeCAD
  key: 14
  accion: entrar_folder
  opciones:
    folder: ./freecad
  imagen: ./freecad/freecad.png
- nombre: docker
  titulo: Docker
  key: 15
  accion: entrar_folder
  opciones:
    folder: ./docker
- nombre: humedad Estudio
  titulo: "{}%"
  key: 16
  imagen_opciones:
    fondo: '#0003aeff'
  titulo_opciones:
    mqtt: sensor/estudio/humedad
- nombre: Temperatura Estudio
  titulo: "{}⁰C"
  key: 17
  imagen_opciones:
    fondo: '#ae2900ff'
  titulo_opciones:
    mqtt: sensor/estudio/temperatura
- nombre: humedad Estudio
  titulo: "{}%"
  key: 21
  imagen_opciones:
    fondo: '#0003aeff'
  titulo_opciones:
    mqtt: sensor/afuera/humedad
- nombre: Temperatura Estudio
  titulo: "{}⁰C"
  key: 22
  imagen_opciones:
    fondo: '#ae2900ff'
  titulo_opciones:
    mqtt: sensor/afuera/temperatura
- nombre: MQTT
  titulo: MQTT
  key: 45
  accion: entrar_folder
  opciones:
    folder: ./mqtt
  titulo_opciones:
    color: red
    borde_color: white
- nombre: Sonidos
  titulo: Sonidos
  key: 51
  accion: entrar_folder
  opciones:
    folder: ./sonidos
  imagen: ./sonidos/sonidos.png
- nombre: BMO
  titulo: BMO
  key: 18
  accion: mqtt
  opciones:
    mensaje: cambiar
    topic: bmo/despierto
  imagen: ./tutorial/bmo.gif
  indice: 3
- nombre: Salir
  titulo: Salir
  key: 30
  accion: salir
  imagen_opciones:
    fondo: '#3c8a23'
  imagen: ./salir.gif
  indice: 4
- nombre: FondoOBS
  titulo: FondoOBS
  key: 20
  accion: entrar_folder
  opciones:
    folder: ./fondoobs
  imagen: ./fondoobs/fondoobs.png
- nombre: jugar
  titulo: Jugar
  key: 63
  accion: entrar_folder
  opciones:
    folder: ./jugar
- nombre: Abir GUI
  titulo: Abrir\nGUI
  key: 62
  accion: abir_gui
  opciones: {}
- nombre: Gromit
  titulo: Gromit
  key: 23
  accion: entrar_folder
  opciones:
    folder: ./gromit
  imagen: ./gromit/dibujar.png
  imagen_opciones:
    fondo: '#ffffff'
- nombre: instagram
  titulo: Instagram
  key: 25
  accion: entrar_folder
  opciones:
    folder: ./instagram
- nombre: Habitos
  titulo: Habitos
  key: 26
  accion: entrar_folder
  opciones:
    folder: ./habitos
- nombre: Control
  titulo: Control
  key: 27
  accion: control
  opciones:
    host: ryuk
    accion: obs_escena
    opciones:
      escena: Zoom
- nombre: Respuestas
  titulo: Respuestas
  key: 28
  accion: entrar_folder
  opciones:
    folder: ./respuestas
- nombre: fritzing
  titulo: Fritzing
  key: 29
  accion: entrar_folder
  opciones:
    folder: ./fritzing
- nombre: OctoPrint
  titulo: OctoPrint
  key: 35
  accion: entrar_folder
  opciones:
    folder: ./octoprint
- nombre: Insync
  titulo: Insync
  key: 32
  accion: entrar_folder
  opciones:
    folder: ./insync
- nombre: Config
  titulo: Config
  key: 33
  accion: entrar_folder
  opciones:
    folder: ./config
- nombre: Arte
  titulo: Artes
  key: 36
  accion: entrar_folder
  opciones:
    folder: ./arte
  imagen: /arte/arte.png
- nombre: PrusaSlicer
  titulo: PrusaSlicer
  key: 38
  accion: entrar_folder
  opciones:
    folder: ./prusaslicer
- nombre: Apaga Despertador
  titulo: Apaga\nDespertador
  key: 40
  accion: mqtt
  opciones:
    mensaje: apagar
    topic: despertador/permiso
- nombre: Cerrar Ventana
  Titulo: Cerrar\nVentana
  key: 42
  accion: cerrar_ventana
- nombre: Numerico
  titulo: Teclado\nNumerico
  key: 31
  accion: entrar_folder
  opciones:
    folder: ./numerico
- nombre: OBS
  titulo: OBS
  key: 50
  accion: entrar_folder
  opciones:
    folder: ./obs
  imagen: /obs/obs.png
- nombre: Crecetube
  titulo: Crecetube
  key: 60
  accion: entrar_folder
  opciones:
    folder: ./crecetube
  imagen_opciones:
    fondo: '#990000'
- nombre: test Voz
  titulo: test Voz
  key: 59
  accion: textovoz
  opciones:
    mensaje: "Hola Mundo, temperatura 20"
...
