---
- nombre: Configurar Tiktok
  titulo: Configurar\nTiktok
  key: 0
  accion: macro
  opciones:
    - accion: escribir_archivo
      opciones:
        archivo: /home/chepecarlos/.config/pluginBlenderALSW/data/animar.json
        data:
          - transform.rotation: -90
            transform.scale_x: 1.03
            transform.scale_y: 1.03
            inicio: 0
    - accion: teclas
      opciones:
        teclas:
        - ctrl
        - shift
        - Q
- nombre: Zoon
  titulo: Zoon
  key: 1
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
            outline_width: 0.85
            inicio: 0
    - accion: teclas
      opciones:
        teclas:
        - ctrl
        - shift
        - Q
---