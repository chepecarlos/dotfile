---
- nombre: animar clip
  key: KEY_1
  accion: macro
  opciones:
  - accion: entrar_folder
    opciones:
      folder: /animaciones/animarclip
  - accion: mqtt
    opciones:
      topic: monitor
      mensaje: Animar Clip
- nombre: Camara Izquierda
  key: KEY_1
  accion: obs_filtro
  opciones:
    fuente: Umaru
    filtro: Mover Izquierda
    estado: true
- nombre: Camara Derecha
  key: KEY_2
  accion: obs_filtro
  opciones:
    fuente: Umaru
    filtro: Mover Derecha
    estado: true
- nombre: Fondo OBS
  key: KEY_3
  accion: entrar_folder
  opciones:
    folder: /fondoobs
- nombre: Camara
  key: KEY_4
  accion: obs_fuente
  opciones:
    fuente: Esena_Camara
- nombre: Conectar OBS
  key: KEY_5
  accion: obs_conectar
- nombre: Escena Camara
  key: KEY_A
  accion: macro
  opciones:
  - accion: obs_escena
    opciones:
      escena: Camara
  - accion: obs_escena_vertical
    opciones:
      escena: Camara_V
- nombre: Anterior Pagina
  key: KEY_B
  accion: anterior_pagina
- nombre: Aplausos
  key: KEY_C
  accion: reproducion
  opciones:
    archivo: /sonidos/aplausos.wav
- nombre: Dibujar Limpiar
  key: KEY_CAPSLOCK
  accion: teclas
  opciones:
    teclas:
    - shift
    - f9
- nombre: Escena Ryuk
  key: KEY_D
  accion: macro
  opciones:
  - accion: obs_escena
    opciones:
      escena: Ryuk
  - accion: obs_escena_vertical
    opciones:
      escena: Ryuk_V
- nombre: Escena Solo Ryuk
  key: KEY_E
  accion: obs_escena
  opciones:
    escena: Solo_Ryuk
- nombre: Regresar
  key: KEY_ESC
  accion: regresar_folder
- nombre: Escena apoyo
  key: KEY_F
  accion: macro
  opciones:
  - accion: obs_escena
    opciones:
      escena: Apoyo
  - accion: obs_escena_vertical
    opciones:
      escena: Apoyo_V
- nombre: Folder Tutorial
  key: KEY_F1
  accion: entrar_folder
  opciones:
    folder: /tutorial
- nombre: Salir
  key: KEY_F10
  accion: salir
- nombre: Ventana Youtube Live
  key: KEY_F12
  accion: mostrar_ventana
  opciones:
    titulo: YouTube Studio
- nombre: Jugar Pedal
  key: KEY_F2
  accion: entrar_folder
  opciones:
    folder: /jugar
    dispositivo: pedal
- nombre: Folder Tutorial
  key: KEY_F1
  accion: entrar_folder
  opciones:
    folder: /tutorial
- nombre: Cambiar Twitch
  key: KEY_F3
  accion: mostrar_ventana
  opciones:
    titulo: Google Chrome
- nombre: Cambiar Ventana Proyección OBS
  key: KEY_F4
  accion: mostrar_ventana
  opciones:
    titulo: Proyector
- nombre: Cuack
  key: KEY_F5
  accion: reproducion
  opciones:
    archivo: /sonidos/cuack.wav
- nombre: Golpe
  key: KEY_F6
  accion: reproducion
  opciones:
    archivo: /sonidos/golpe.wav
    ganancia: -5
- nombre: Reiniciar Data
  key: KEY_F9
  accion: reiniciar_data
- nombre: Escena Cenital
  key: KEY_G
  accion: macro
  opciones:
  - accion: obs_escena
    opciones:
      escena: Cenital
  - accion: obs_escena_vertical
    opciones:
      escena: Cenital_V
- nombre: Pulse
  key: KEY_LEFTALT
  accion: entrar_folder
  opciones:
    folder: /pulse
- nombre: Pokemon
  key: KEY_LEFTCTRL
  accion: reproducion
  opciones:
    archivo: /sonidos/pokemon.wav
- nombre: Cambiar Twitch
  key: KEY_LEFTSHIFT
  accion: mostrar_ventana
  opciones:
    titulo: Discord
- nombre: Siquiente Pagina
  key: KEY_M
  accion: siquiente_pagina
- nombre: Escena Zoom
  key: KEY_Q
  accion: macro
  opciones:
  - accion: obs_escena
    opciones:
      escena: Zoom
  - accion: obs_escena_vertical
    opciones:
      escena: Zoom_V
- nombre: Apoyo Zoon
  key: KEY_R
  accion: obs_escena
  opciones:
    escena: Apoyo_Zoom
- nombre: Esena Umaru
  key: KEY_S
  accion: macro
  opciones:
  - accion: obs_escena
    opciones:
      escena: Umaru
  - accion: obs_escena_vertical
    opciones:
      escena: Umaru_V
- nombre: Parar Reproducion
  key: KEY_SPACE
  accion: detener_reproducion
- nombre: Escena Cenital Zoom
  key: KEY_T
  accion: macro
  opciones:
  - accion: obs_escena
    opciones:
      escena: Cenital_Zoom
  - accion: obs_escena_vertical
    opciones:
      escena: Cenital_Zoom_V
- nombre: Dibujar Activar/Desactivar
  key: KEY_TAB
  accion: teclas
  opciones:
    teclas:
    - f9
- nombre: Sonido Kawai
  key: KEY_V
  accion: reproducion
  opciones:
    archivo: /sonidos/kawai.wav
- nombre: Esena Solo Umaru
  key: KEY_W
  accion: obs_escena
  opciones:
    escena: Solo_Umaru
- nombre: Sonido Rebobinar
  key: KEY_X
  accion: reproducion
  opciones:
    archivo: /sonidos/rebobinar.wav
- nombre: Sonido Chan
  key: KEY_Z
  accion: reproducion
  opciones:
    archivo: /sonidos/chan.wav
...
