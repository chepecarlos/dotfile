---
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
- nombre: Salir
  key: KEY_DELETE
  accion: salir
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
- nombre: Reiniciar
  key: KEY_F1
  accion: reiniciar_data
- nombre: Encender Aro
  key: KEY_F10
  accion: os
  opciones:
    comando: curl -s http://192.168.50.123/vivo
- nombre: Apagar Aro
  key: KEY_F11
  accion: os
  opciones:
    comando: curl -s http://192.168.50.123/muerto
- nombre: Luces
  titulo: "Luces\n   Izquierda"
  key: KEY_F5
  accion: mqtt
  opciones:
    mensaje: c
    topic: alsw/estudio/estado/3
- nombre: Luces
  titulo: "Luces\n  Centro"
  key: KEY_F6
  accion: mqtt
  opciones:
    mensaje: c
    topic: alsw/estudio/estado/1
- nombre: Luces
  titulo: "Luces\n  Derecha"
  key: KEY_F7
  accion: mqtt
  opciones:
    mensaje: c
    topic: alsw/estudio/estado/2
- nombre: Luces
  titulo: Luces
  key: KEY_F8
  accion: mqtt
  opciones:
    mensaje: c
    topic: alsw/estudio/estado/t
- nombre: Sub
  key: KEY_F9
  accion: mqtt
  opciones:
    topic: alsw/subreal/activo
    mensaje: c
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
- nombre: Escena Circuito
  key: KEY_H
  accion: macro
  opciones:
  - accion: obs_escena
    opciones:
      escena: Circuito
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
- nombre: test MQTT
  key: KEY_Z
  accion: mqtt
  opciones:
    mensaje: hola
    topic: despertador
- nombre: Permiso Despertador
  key: KEY_P
  accion: mqtt
  opciones:
    mensaje: activar
    topic: despertador/permiso
- nombre: Encender Rudolph
  key: KEY_M
  accion: mqtt
  opciones:
    mensaje: cambiar
    topic: rudolph
- nombre: Despertar BMO
  key: KEY_Q
  accion: mqtt
  opciones:
    mensaje: activar
    topic: bmo/despierto
- nombre: Dormir BMO
  key: KEY_W
  accion: mqtt
  opciones:
    mensaje: desactivo
    topic: bmo/despierto
- nombre: Animar Blender
  key: KEY_B
  accion: macro
  opciones:
    - accion: escribir_archivo
      opciones:
        archivo: /home/chepecarlos/.config/pluginBlenderALSW/data/animar.json
        data:
          - transform.rotation: 0
            transform.offset_y: 0
            transform.offset_x: 0
            inicio: 0
          - transform.offset_y: 500
            transform.offset_x: 500
            inicio: 25%
          - transform.offset_y: 500
            transform.offset_x: 500
            final: -25%
          - transform.offset_y: 0
            transform.offset_x: 0
            final: 0
          - transform.rotation: 180
            final: 0
    - accion: teclas
      opciones:
        teclas:
        - ctrl
        - shift
        - Q
- nombre: Insertar Blender
  key: KEY_N
  accion: macro
  opciones:
    - accion: escribir_archivo
      opciones:
        archivo: /home/chepecarlos/.config/pluginBlenderALSW/data/insertar.json
        data:
          - archivo: /home/SudoData/ChepeCarlos@alsw.net/2.Contenido/1.Biblioteca/2.Miniaturas/3.Logos/2.MapaBits/Arduino.png
            use_flip_x: true
          - archivo: /home/SudoData/ChepeCarlos@alsw.net/2.Contenido/1.Biblioteca/2.Miniaturas/3.Logos/2.MapaBits/firefox.png
            transform.offset_x: 100
            transform.offset_y: 100
            transform.scale_x: 1.30
            transform.scale_y: 1.30
            transform.rotation: 45
            desface: 2
          - archivo: /home/SudoData/ChepeCarlos@alsw.net/2.Contenido/1.Biblioteca/1.Video/4.Sonidos/1.Base/golpe.mp3
            desface: 0.5
            volume: 0.2
          - archivo: /home/SudoData/ChepeCarlos@alsw.net/2.Contenido/1.Biblioteca/1.Video/6.Memes/Epic_facepalm.mp4
            desface: -2
    - accion: teclas
      opciones:
        teclas:
        - ctrl
        - shift
        - Y
...
