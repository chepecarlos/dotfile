---
- nombre: blender
  titulo: blender
  key: 7
  accion: os
  opciones:
    comando: (flatpak run org.blender.Blender) &
  imagen: ./blender.png
- nombre: OBS
  titulo: OBS
  key: 8
  accion: os
  opciones:
    comando: (flatpak run com.obsproject.Studio )&
  imagen: ./obs.png
- nombre: PrusaSlicer
  titulo: PrusaSlicer
  key: 9
  accion: os
  opciones:
    comando: (flatpak run com.prusa3d.PrusaSlicer) &
- nombre: OBS Tutorial
  titulo: WebCamara
  key: 30
  accion: os
  opciones:
    comando: (obs --startvirtualcam --profile Youtube_ALSW --collection 1.Tutoriales
      --scene Umaru > /dev/null 2>&1 )&
  imagen: ./obs.png
- nombre: Discord
  titulo: Umaru
  key: 31
  accion: mqtt
  opciones:
    opciones:
      accion: os
      opciones:
        comando: discord &
    topic: alsw/evento/ryuk
  imagen: ./discord.png
- nombre: OBS Tutorial
  titulo: '16:9'
  key: 33
  accion: os
  opciones:
    comando: obs --profile 'Youtube_ALSW' --collection '1.Tutoriales' > /dev/null
      &
  imagen: ./obs.png
- nombre: OBS Tutorial
  titulo: Shorts
  key: 34
  accion: os
  opciones:
    comando: obs --profile 'Youtube_Shorts' --collection '2.Shorts' > /dev/null &
  imagen: ./obs.png
- nombre: Firefox
  titulo: Firefox
  key: 35
  accion: os
  opciones:
    comando: firefox &
- nombre: Discord Ryuk
  titulo: Ryuk
  key: 38
  accion: os
  opciones:
    comando: discord &
  imagen: ./discord.png
- nombre: OBS
  titulo: Full OBS
  key: 39
  accion: macro
  opciones:
  - accion: os
    opciones:
      comando: obs --profile 'Youtube_ALSW' --collection '1.Tutoriales' > /dev/null
        &
  - accion: mqtt
    opciones:
      opciones:
        accion: os
        opciones:
          comando: obs --minimize-to-tray --startvirtualcam > /dev/null &
      topic: alsw/evento/ryuk
  imagen: ./obs.png
- nombre: Inskcape
  titulo: Inskcape
  key: 40
  accion: os
  opciones:
    comando: inkscape &
  imagen: ./inkscape.png
- nombre: OBS Cuadrado
  titulo: Cuadrado
  key: 41
  accion: os
  opciones:
    comando: obs --profile 'Youtube_Cuadrado' --collection '3.Cuadrado' > /dev/null
      &
  imagen: ./obs.png
...
