---
- nombre: Escena Ryuk
  titulo: Super\nGrabar
  key: 1
  accion: macro
  opciones:
  - accion: obs_grabar_vertical
  - accion: obs_grabar
- nombre: Grabar Vertical
  titulo: Vertical
  key: 4
  accion: obs_grabar_vertical
  imagen_estado:
    imagen_true: /obs/grabar_on.png
    imagen_false: /obs/grabar_off.png
- nombre: EnVivo
  key: 7
  accion: obs_envivo
  imagen_estado:
    imagen_true: /obs/envivo_on.png
    imagen_false: /obs/envivo_off.png
- nombre: Grabar
  key: 8
  accion: obs_grabar
  imagen_estado:
    imagen_true: /obs/grabar_on.png
    imagen_false: /obs/grabar_off.png
- key: propiedad_folder
  titulo_opciones:
    tamanno_maximo: 40
...
