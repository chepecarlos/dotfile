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
  descripcion: Links utiles para compartir
  accion: entrar_folder
  opciones:
    folder: ./link
  imagen: /link/link.gif
- nombre: APP
  titulo: APP
  key: 3
  accion: entrar_folder
  opciones:
    folder: ./binarios
  imagen: ./binarios/cammy.gif
  imagen_opciones:
    fondo: '#FFFFFF'
- nombre: Recurso
  titulo: Recurso
  key: 4
  accion: entrar_folder
  opciones:
    folder: ./recurso
  imagen: ./recurso/ryuk_pc.gif
- nombre: Code
  titulo: Code
  key: 5
  accion: entrar_folder
  opciones:
    folder: /ide/code
  imagen: /ide/code/code.png
- nombre: Extras
  titulo: Extras
  key: 6
  accion: entrar_folder
  opciones:
    folder: ./extras
- nombre: Marcadores
  titulo: Marcadores
  key: 7
  accion: entrar_folder
  opciones:
    folder: marcadores
- nombre: Youtube
  titulo: Youtube
  key: 8
  accion: entrar_folder
  opciones:
    folder: ./youtube
  imagen: ./youtube/youtube.gif
- nombre: CheckList
  titulo: CheckList
  key: 10
  accion: entrar_folder
  opciones:
    folder: ./checklist
- nombre: Editor Video Blender
  titulo: Sequencer
  key: 11
  accion: entrar_folder
  opciones:
    folder: ./sequencer
  imagen: ./sequencer/blender.png
- nombre: animacion3D
  titulo: animacion3D
  key: 12
  accion: entrar_folder
  opciones:
    folder: ./animacion3D
  imagen: ./sequencer/blender.png
- nombre: FreeCAD
  titulo: FreeCAD
  key: 13
  accion: entrar_folder
  opciones:
    folder: ./freecad
  imagen: ./freecad/freecad.png
- nombre: docker
  titulo: Docker
  key: 15
  accion: entrar_folder
  opciones:
    folder: /docker
  imagen: ./docker/docker.png
- nombre: BMO
  titulo: BMO
  key: 16
  accion: mqtt
  opciones:
    mensaje: cambiar
    topic: bmo/despierto
  imagen: ./tutorial/bmo.gif
- nombre: Abrir GUI
  titulo: Abrir\nGUI
  key: 17
  accion: abrir_gui
  imagen_opciones:
    fondo: '#66b3ff'
- nombre: Respuesta ADS
  titulo: Respuesta\nAds
  key: 18
  descripcion: Respuestas para campañas de publicidad
  accion: entrar_folder
  opciones:
    folder: ./respuesta
  imagen_opciones:
    fondo: '#00ff00'
- nombre: Fondo Escritorio
  titulo: Fondo\nEscritorio
  key: 19
  accion: entrar_folder
  opciones:
    folder: /fondo
  imagen_opciones:
    fondo: '#00005c'
- nombre: FondoOBS
  titulo: FondoOBS
  key: 20
  accion: entrar_folder
  opciones:
    folder: ./fondoobs
  imagen: ./fondoobs/fondoobs.png
- nombre: OctoPrint
  titulo: OctoPrint
  key: 21
  accion: entrar_folder
  opciones:
    folder: ./octoprint
  imagen: ./octoprint/octoprint.png
- nombre: Gromit
  titulo: Gromit
  key: 22
  accion: entrar_folder
  opciones:
    folder: ./gromit
  imagen: ./gromit/dibujar.png
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
- nombre: PrusaSlicer
  titulo: PrusaSlicer
  key: 28
  accion: entrar_folder
  opciones:
    folder: ./prusaslicer
  imagen: ./prusaslicer/prusaslicer.png
  imagen_opciones:
    fondo: '#ffffff'
- nombre: Reiniciar App
  titulo: Reiniciar\nApp
  key: 29
  accion: reiniciar_app
  imagen_opciones:
    fondo: '#ff0000'
- nombre: Salir
  titulo: Salir
  key: 30
  accion: salir
  imagen: ./salir.gif
  imagen_opciones:
    fondo: '#3c8a23'
- nombre: Numerico
  titulo: Teclado\nNumerico
  key: 31
  accion: entrar_folder
  opciones:
    folder: ./numerico
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
- nombre: Notion
  key: 34
  accion: entrar_folder
  opciones:
    folder: ./notion
  imagen: ./notion/notion.png
- nombre: Arte
  titulo: Artes
  key: 36
  accion: entrar_folder
  opciones:
    folder: ./arte
  imagen: /arte/arte.png
- nombre: Raspberrypi
  titulo: Raspberrypi
  key: 37
  accion: entrar_folder
  opciones:
    folder: ./raspberrypi
  imagen: ./raspberrypi/raspberrypi.png
- nombre: Zoom
  key: 39
  accion: entrar_folder
  opciones:
    folder: ./zoom
  imagen: ./zoom/zoom.png
- nombre: Apaga Despertador
  titulo: Apaga\nDespertador
  key: 40
  accion: mqtt
  opciones:
    mensaje: apagar
    topic: despertador/permiso
- nombre: inkscape
  titulo: Inkscape
  key: 41
  accion: entrar_folder
  opciones:
    folder: ./inkscape
  imagen: ./inkscape/inkscape.png
- nombre: gimp
  titulo: Gimp
  key: 42
  accion: entrar_folder
  opciones:
    folder: ./gimp
  imagen: ./gimp/gimp.png
- nombre: Cerrar Ventana
  key: 42
  accion: cerrar_ventana
  Titulo: Cerrar\nVentana
- nombre: Scrcpy
  titulo: Scrcpy
  key: 43
  accion: entrar_folder
  opciones:
    folder: ./scrcpy
- nombre: MQTT
  titulo: MQTT
  key: 45
  accion: entrar_folder
  opciones:
    folder: ./mqtt
  titulo_opciones:
    color: red
    borde_color: white
- nombre: OBS
  titulo: OBS
  key: 49
  accion: entrar_folder
  opciones:
    folder: ./obs
  imagen: /obs/obs.png
- nombre: Sonidos
  titulo: Sonidos
  key: 51
  accion: entrar_folder
  opciones:
    folder: ./sonidos
  imagen: ./sonidos/sonidos.png
- nombre: test Voz
  titulo: test Voz
  key: 59
  accion: textovoz
  opciones:
    mensaje: Hola Mundo, temperatura 20
- nombre: Crecetube
  titulo: Crecetube
  key: 60
  accion: entrar_folder
  opciones:
    folder: ./crecetube
  imagen_opciones:
    fondo: '#990000'
- nombre: jugar
  titulo: Jugar
  key: 63
  accion: entrar_folder
  opciones:
    folder: ./jugar
- nombre: fritzing
  titulo: Fritzing
  key: 80
  accion: entrar_folder
  opciones:
    folder: ./fritzing
- key: propiedad_folder
  imagen_opciones:
    fondo: '#00005c'
  titulo_opciones:
    tamanno_maximo: 20
...
