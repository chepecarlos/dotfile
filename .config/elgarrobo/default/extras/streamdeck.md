---
- nombre: Grabar Escritorio
  titulo: Grabar\nEscritorio
  key: 1
  accion: teclas
  opciones:
    teclas:
    - shift
    - ctrl
    - alt
    - r
- nombre: Depurador Cinammon
  titulo: Depurador\nCinammon
  key: 2
  accion: teclas
  opciones:
    teclas:
    - win
    - l
- nombre: Reiniciar PipeWire
  titulo: Reiniciar\nPipeWire
  key: 4
  accion: os
  opciones:
    comando: systemctl --user restart pipewire pipewire-pulse wireplumber &
- nombre: Editar PipeWire
  titulo: Editar\nPipeWire
  key: 5
  accion: os
  opciones:
    comando: qpwgraph &
- nombre: DotFile
  titulo: DotFile
  imagen_opciones:
    fondo: '#cce706ff'
  key: 6
  accion: os
  opciones:
    comando: code ~/dotfile/ &
- nombre: Conectar PipeWire
  titulo: Conectar\nPipeWire
  key: 9
  accion: os
  opciones:
    comando: bash ~/.config/pipewire/scripts/links.sh
- nombre: Code ElGarrobo
  titulo: Code\nElGarrobo
  imagen_opciones:
    fondo: '#004901ff'
  key: 11
  accion: os
  opciones:
    comando: code ~/5.Programas/2.Heramientas/1.CLI/1.ElGarrobo/ &
- nombre: Code Config ElGarrobo
  titulo: Code\nConfig\nElGarrobo
  imagen_opciones:
    fondo: '#004901ff'
  key: 12
  accion: os
  opciones:
    comando: code ~/.config/elgarrobo &
- nombre: Nemo Config ElGarrobo
  titulo: Nemo\nConfig\nElGarrobo
  imagen_opciones:
    fondo: '#004901ff'
  key: 13
  accion: os
  opciones:
    comando: nemo ~/.config/elgarrobo &
- nombre: Code PipeWire
  titulo: Code\nPipeWire
  imagen_opciones:
    fondo: '#051153ff'
  key: 15
  accion: os
  opciones:
    comando: code ~/.config/pipewire &
- nombre: Reinciar PulseAudio
  titulo: Reiniciar\nPulseAudio
  key: 16
  accion: os
- nombre: Code Prusa Slicer
  titulo: Code\nPrusaSlicer
  key: 17
  accion: os
  opciones:
    comando: code ~/.var/app/com.prusa3d.PrusaSlicer/config/PrusaSlicer/
- nombre: Reinicar WebCamara
  titulo: Reinicar\nWebCamara\nDoker
  key: 21
  accion: escribir
  opciones:
    texto: pkill -f mjpg_streamer
- nombre: Reinicar WebCamara
  titulo: Reinicar\nWebCamara\nOctoPi
  key: 22
  accion: escribir
  opciones:
    texto: pkill -f mjpg_streamer
- nombre: Aplicar Cambios Reglas udev
  titulo: Aplicar\nCambios\nudev
  comentario: Aplica cambios de archivo /etc/udev/rules.d/
  key: 23
  accion: escribir
  opciones:
    texto: sudo udevadm control --reload-rules && sudo udevadm trigger
...
