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
- nombre: Estado Gyokuyou U1
  titulo: '{:.0f}%'
  key: 5
  imagen_opciones:
    fondo: rgb(0, 139, 209)
  titulo_opciones:
    mqtt: estado_klipper/gyokuyou/progreso
- nombre: Reimprimir MK4s
  titulo: Ultimo\nMK4s
  key: 7
  accion: reimprimir_octoprint
  opciones:
    url: http://192.168.50.238
    token: qhMrz_URykjtBISSxqoF5RhHkPsYiPcx18MtxIbxi10
  imagen_opciones:
    fondo: '#042ec6'
- nombre: Reimprimir Maomao
  titulo: Ultimo
  key: 8
  accion: reimprimir_octoprint
  opciones:
    url: http://192.168.50.129:5001
    token: -FvrxMdU2UAmfkmuauFD-xQUX39AZ-qeoqtyQrm2jps
  imagen: ./maomao.png
  imagen_opciones:
    fondo: '#042ec6'
- nombre: Reimprimir Jinshi
  titulo: Ultimo
  key: 9
  accion: reimprimir_octoprint
  opciones:
    url: http://192.168.50.129:5000
    token: Jpto-xPq9kiMphedDUL-mJY2WxT8cpVS-SnwtzX68SQ
  imagen: ./jinshi.png
  imagen_opciones:
    fondo: '#042ec6'
- nombre: Reiniciar gyokuyou
  titulo: Ultimo
  key: 10
  accion: reimprimir_klipper
  opciones:
    url: http://192.168.50.193
  imagen: ./gyokuyou.png
  imagen_opciones:
    fondo: '#042ec6'
- nombre: Cancelar MK4s
  titulo: Cancelar\nMK4s
  key: 12
  accion: cancelar_octoprint
  opciones:
    url: http://192.168.50.238
    token: qhMrz_URykjtBISSxqoF5RhHkPsYiPcx18MtxIbxi10
  imagen_opciones:
    fondo: '#c60404'
- nombre: Cancelar Maomao
  titulo: Cancelar
  key: 13
  accion: cancelar_octoprint
  opciones:
    url: http://192.168.50.129:5001
    token: -FvrxMdU2UAmfkmuauFD-xQUX39AZ-qeoqtyQrm2jps
  imagen: ./maomao.png
  imagen_opciones:
    fondo: '#c60404'
- nombre: Cancelar Jinshi
  titulo: Cancelar
  key: 14
  accion: cancelar_octoprint
  opciones:
    url: http://192.168.50.129:5000
    token: Jpto-xPq9kiMphedDUL-mJY2WxT8cpVS-SnwtzX68SQ
  imagen: ./jinshi.png
  imagen_opciones:
    fondo: '#c60404'
- nombre: Cancelar Gyokuyou
  titulo: Cancelar
  key: 15
  accion: cancelar_klipper
  opciones:
    url: http://192.168.50.193
  imagen: ./gyokuyou.png
  imagen_opciones:
    fondo: '#042ec6'
- nombre: mk4 cama tmp
  titulo: '{:.0f}⁰C'
  key: 16
  imagen_opciones:
    fondo: rgb(226, 68, 0)
  titulo_opciones:
    mqtt: estado_octoprint/mk4s/temperatura/bed/actual
- nombre: mk4 punta tmp
  titulo: '{:.0f}⁰C'
  key: 18
  imagen_opciones:
    fondo: rgb(0, 110, 13)
  titulo_opciones:
    mqtt: estado_octoprint/mk4s/temperatura/tool0/actual
- nombre: maomao cama tmp
  titulo: '{:.0f}⁰C'
  key: 19
  imagen_opciones:
    fondo: rgb(226, 68, 0)
  titulo_opciones:
    mqtt: estado_octoprint/maomao/temperatura/bed/actual
- nombre: maomao punta tmp
  titulo: '{:.0f}⁰C'
  key: 21
  imagen_opciones:
    fondo: rgb(0, 110, 13)
  titulo_opciones:
    mqtt: estado_octoprint/maomao/temperatura/tool0/actual
- nombre: maomao cama tmp
  titulo: '{:.0f}⁰C'
  key: 22
  imagen_opciones:
    fondo: rgb(226, 68, 0)
  titulo_opciones:
    mqtt: estado_octoprint/jinshi/temperatura/bed/actual
- nombre: maomao punta tmp
  titulo: '{:.0f}⁰C'
  key: 24
  imagen_opciones:
    fondo: rgb(0, 110, 13)
  titulo_opciones:
    mqtt: estado_octoprint/jinshi/temperatura/tool0/actual
- nombre: gyokuyou cama tmp
  titulo: '{:.0f}⁰C'
  key: 25
  imagen_opciones:
    fondo: rgb(226, 68, 0)
  titulo_opciones:
    mqtt: estado_klipper/gyokuyou/temperatura/bed/actual
- nombre: gyokuyou punta tmp
  titulo: '{:.0f}⁰C'
  key: 27
  imagen_opciones:
    fondo: rgb(0, 110, 13)
  titulo_opciones:
    mqtt: estado_klipper/gyokuyou/temperatura/extruder/actual
- nombre: Cola Granja
  titulo: '{}\nCola'
  key: 31
  accion: nada
  imagen_opciones:
    fondo: '#5c2e00'
  titulo_opciones:
    mqtt: estado_fdm_monster/total/cola
- nombre: Cola MK4s
  titulo: '{}\nCola'
  key: 32
  accion: nada
  imagen_opciones:
    fondo: '#5c2e00'
  titulo_opciones:
    mqtt: estado_fdm_monster/MK4s/cola
- nombre: Cola Maomao
  titulo: '{}\nCola'
  key: 33
  accion: nada
  imagen_opciones:
    fondo: '#5c2e00'
  titulo_opciones:
    mqtt: estado_fdm_monster/CoreOne Maomao/cola
- nombre: Cola Jinshi
  titulo: '{}\nCola'
  key: 34
  accion: nada
  imagen_opciones:
    fondo: '#5c2e00'
  titulo_opciones:
    mqtt: estado_fdm_monster/CoreOne Jinshi/cola
- nombre: Cola Gyokuyou
  titulo: '{}\nCola'
  key: 35
  accion: nada
  imagen_opciones:
    fondo: '#5c2e00'
  titulo_opciones:
    mqtt: estado_fdm_monster/Gyokuyou/cola
- nombre: Siguiente MK4s
  titulo: Siguiente\nMK4s
  key: 37
  descripcion: Manda imprimir siguiente tarea de cola
  accion: imprimir_cola_fdm
  opciones:
    url: http://192.168.50.200:4000
    usuario: chepecarlos
    clave: fullpower7
    impresora: MK4s
  imagen_opciones:
    fondo: '#a35200'
- nombre: Siguiente Maomao
  titulo: Siguiente\nMaomao
  key: 38
  descripcion: Manda imprimir siguiente tarea de cola
  accion: imprimir_cola_fdm
  opciones:
    url: http://192.168.50.200:4000
    usuario: chepecarlos
    clave: fullpower7
    impresora: CoreOne Maomao
  imagen_opciones:
    fondo: '#a35200'
- nombre: Siguiente CoreOne Jinshi
  titulo: Siguiente\nJinshi
  key: 39
  descripcion: Manda imprimir siguiente tarea de cola
  accion: imprimir_cola_fdm
  opciones:
    url: http://192.168.50.200:4000
    usuario: chepecarlos
    clave: fullpower7
    impresora: CoreOne Jinshi
  imagen_opciones:
    fondo: '#a35200'
- nombre: Siguiente Gyokuyou
  titulo: Siguiente\nGyokuyou
  key: 40
  descripcion: Manda imprimir siguiente tarea de cola
  accion: imprimir_cola_fdm
  opciones:
    url: http://192.168.50.200:4000
    usuario: chepecarlos
    clave: fullpower7
    impresora: Gyokuyou
  imagen_opciones:
    fondo: '#a35200'
- nombre: Abrir FDM
  titulo: Abrir\nFDM
  key: 66
  accion: navegador
  opciones:
    url: http://192.168.50.200:4000/
  imagen_opciones:
    fondo: '#d60000'
- nombre: Abrir Mk4s
  titulo: Abrir\nMk4s
  key: 67
  accion: navegador
  opciones:
    url: http://192.168.50.238/
  imagen_opciones:
    fondo: '#0052a3'
- nombre: Abrir Maomao
  titulo: Abrir\nMaomao
  key: 68
  accion: navegador
  opciones:
    url: http://192.168.50.129:5001/
  imagen_opciones:
    fondo: '#0052a3'
- nombre: Abrir Jinshi
  titulo: Abrir\nJinshi
  key: 69
  accion: navegador
  opciones:
    url: http://192.168.50.129:5000/
  imagen_opciones:
    fondo: '#0052a3'
- nombre: Abrir Gyokuyou
  titulo: Abrir\nGyokuyou
  key: 70
  accion: navegador
  opciones:
    url: http://192.168.50.193/
  imagen_opciones:
    fondo: '#0052a3'
- key: propiedad_folder
  titulo_opciones:
    tamanno_maximo: 30
...
