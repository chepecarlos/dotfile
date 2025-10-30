---
- nombre: Aro Encender PrusaMini
  key: 0
  accion: os
  titulo: Aro\nEncender
  opciones:
    comando: curl -s http://192.168.50.123/vivo
- nombre: Aro Apagar
  key: 1
  accion: os
  titulo: Aro\nApagar
  opciones:
    comando: curl -s http://192.168.50.123/muerto
- nombre: Aro 25%
  key: 5
  accion: os
  titulo: 25%
  opciones:
    comando: curl -s http://192.168.50.123/nivel?valor=50
- nombre: Aro 250%
  key: 9
  accion: os
  titulo: 250%
  opciones:
    comando: curl -s http://192.168.50.123/nivel?valor=250
...
