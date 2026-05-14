---
- nombre: Estado mk4s
  titulo: '{:.0f}%'
  key: 2
  imagen_opciones:
    fondo: rgb(0, 139, 209)
  titulo_opciones:
    mqtt: estado_octoprint/mk4s/progreso
- nombre: Estado maomao
  titulo: '{:.0f}%'
  key: 3
  imagen_opciones:
    fondo: rgb(0, 139, 209)
  titulo_opciones:
    mqtt: estado_octoprint/maomao/progreso
- nombre: Estado Jinshi
  titulo: '{:.0f}%'
  key: 4
  imagen_opciones:
    fondo: rgb(0, 139, 209)
  titulo_opciones:
    mqtt: estado_octoprint/jinshi/progreso
- nombre: Reimprimir MK4s
  titulo: Ultimo\nMK4s
  key: 7
  imagen_opciones:
    fondo: '#042ec6'
  accion: reimprimir_octoprint
  opciones:
    url: http://192.168.50.238
    token: qhMrz_URykjtBISSxqoF5RhHkPsYiPcx18MtxIbxi10
- nombre: Reimprimir Maomao
  titulo: Ultimo
  imagen: ./maomao.png
  key: 8
  imagen_opciones:
    fondo: '#042ec6'
  accion: reimprimir_octoprint
  opciones:
    url: http://192.168.50.129:5001
    token: -FvrxMdU2UAmfkmuauFD-xQUX39AZ-qeoqtyQrm2jps
- nombre: Reimprimir Jinshi
  titulo: Ultimo
  imagen: ./jinshi.png
  key: 9
  imagen_opciones:
    fondo: '#042ec6'
  accion: reimprimir_octoprint
  opciones:
    url: http://192.168.50.129:5000
    token: Jpto-xPq9kiMphedDUL-mJY2WxT8cpVS-SnwtzX68SQ
- nombre: Cancelar MK4s
  titulo: Cancelar\nMK4s
  key: 12
  imagen_opciones:
    fondo: '#c60404'
  accion: cancelar_octoprint
  opciones:
    url: http://192.168.50.238
    token: qhMrz_URykjtBISSxqoF5RhHkPsYiPcx18MtxIbxi10
- nombre: Cancelar Maomao
  titulo: Cancelar
  imagen: ./maomao.png
  key: 13
  imagen_opciones:
    fondo: '#c60404'
  accion: cancelar_octoprint
  opciones:
    url: http://192.168.50.129:5001
    token: -FvrxMdU2UAmfkmuauFD-xQUX39AZ-qeoqtyQrm2jps
- nombre: Cancelar Jinshi
  titulo: Cancelar
  imagen: ./jinshi.png
  key: 14
  imagen_opciones:
    fondo: '#c60404'
  accion: cancelar_octoprint
  opciones:
    url: http://192.168.50.129:5000
    token: Jpto-xPq9kiMphedDUL-mJY2WxT8cpVS-SnwtzX68SQ
- nombre: Estado mk4 tmp
  titulo: '{:.0f}⁰C'
  key: 17
  imagen_opciones:
    fondo: rgb(226, 68, 0)
  titulo_opciones:
    mqtt: estado_octoprint/mk4s/temperatura/bed/actual
- nombre: Estado mk4 cama
  titulo: '{:.0f}⁰C'
  key: 18
  imagen_opciones:
    fondo: rgb(0, 110, 13)
  titulo_opciones:
    mqtt: estado_octoprint/mk4s/temperatura/tool0/actual

- nombre: Estado maomao
  titulo: '{:.0f}⁰C'
  key: 22
  imagen_opciones:
    fondo: rgb(226, 68, 0)
  titulo_opciones:
    mqtt: estado_octoprint/maomao/temperatura/bed/actual
- nombre: Estado maomao
  titulo: '{:.0f}⁰C'
  key: 23
  imagen_opciones:
    fondo: rgb(0, 110, 13)
  titulo_opciones:
    mqtt: estado_octoprint/maomao/temperatura/tool0/actual


- nombre: Estado maomao
  titulo: '{:.0f}⁰C'
  key: 27
  imagen_opciones:
    fondo: rgb(226, 68, 0)
  titulo_opciones:
    mqtt: estado_octoprint/jinshi/temperatura/bed/actual
- nombre: Estado maomao
  titulo: '{:.0f}⁰C'
  key: 28
  imagen_opciones:
    fondo: rgb(0, 110, 13)
  titulo_opciones:
    mqtt: estado_octoprint/jinshi/temperatura/tool0/actual
- nombre: Aro Apagar
  key: 50
  accion: os
  titulo: Aro\nApagar
  opciones:
    comando: curl -s http://192.168.50.123/muerto
- key: propiedad_folder
  titulo_opciones:
    tamanno_maximo: 30
...
