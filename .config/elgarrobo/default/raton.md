---
- nombre: Mostrar Areas de Trabajo
  key: KEY_1
  accion: teclas
  opciones:
    teclas:
    - ctrl
    - alt
    - up
- nombre: Clip medio
  key: KEY_2
  accion: presionar
  opciones:
    presionado:
      accion: raton
      opciones:
        boton: centro
        estado: true
    soltar:
      accion: raton
      opciones:
        boton: centro
        estado: false
- nombre: Terminal
  key: KEY_3
  accion: teclas
  opciones:
    teclas:
    - f12
- nombre: Cerrar Pestaña
  key: KEY_4
  accion: teclas
  opciones:
    teclas:
    - ctrl
    - w
- nombre: Siguiente Pestaña
  key: KEY_5
  accion: teclas
  opciones:
    teclas: ctrl + pagedown
- nombre: Anterior Pestaña
  key: KEY_6
  accion: teclas
  opciones:
    teclas: ctrl + pageup
...
