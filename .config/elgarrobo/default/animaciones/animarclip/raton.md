---
- nombre: animar clip
  key: KEY_6
  accion: macro
  opciones:
    - accion: entrar_folder
      opciones:
        folder: defaul/animaciones/animarclip
    - accion: mqtt
      opciones:
        topic: monitor
        mensaje: Animar Clip
---