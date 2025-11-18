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
- nombre: Editar PipeWire
  titulo: Editar\nPipeWire
  key: 5
  accion: os
  opciones:
    comando: qpwgraph &
- nombre: Reiniciar PipeWire
  titulo: Reiniciar\nPipeWire
  key: 4
  accion: os
  opciones:
    comando: systemctl --user restart pipewire pipewire-pulse wireplumber &
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
    comando: code ~/5.Programas/2.Heramientas/1.ElGarrobo &
- nombre: Code Config ElGarrobo
  titulo: Code\nConfig\nElGarrobo
  imagen_opciones:
    fondo: '#004901ff'
  key: 12
  accion: os
  opciones:
    comando: code ~/.config/elgarrobo &
- nombre: DotFile
  titulo: DotFile
  imagen_opciones:
    fondo: '#cce706ff'
  key: 6
  accion: os
  opciones:
    comando: code ~/dotfile/ &
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
---