---
- nombre: Aro Apagar
  key: 1
  accion: os
  titulo: Aro\nApagar
  opciones:
    comando: curl -s http://192.168.50.123/muerto
- nombre: Aro Encender PrusaMini
  key: 2
  accion: os
  titulo: Aro\nEncender
  opciones:
    comando: curl -s http://192.168.50.123/vivo
- nombre: Aro 25%
  key: 5
  accion: os
  titulo: 25%
  opciones:
    comando: curl -s http://192.168.50.123/nivel?valor=50
- nombre: Reimprimir MK4s
  titulo: Reimprimir\nMK4s
  key: 7
  accion: reimprimir_octoprint
  opciones:
    url: http://192.168.50.239
    token: qhMrz_URykjtBISSxqoF5RhHkPsYiPcx18MtxIbxi10
- nombre: Reimprimir Maomao
  titulo: Reimprimir
  imagen: ./maomao.png
  key: 8
  accion: reimprimir_octoprint
  opciones:
    url: http://192.168.50.129:5001
    token: -FvrxMdU2UAmfkmuauFD-xQUX39AZ-qeoqtyQrm2jps
- nombre: Reimprimir Jinshi
  titulo: Reimprimir
  imagen: ./jinshi.png
  key: 9
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
    url: http://192.168.50.239
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
- nombre: Aro 250%
  key: 25
  accion: os
  titulo: 250%
  opciones:
    comando: curl -s http://192.168.50.123/nivel?valor=250
...
