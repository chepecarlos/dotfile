---
- nombre: Zoom
  titulo: Zoom
  key: 0
  accion: obs_escena
  opciones:
    escena: Zoom
  imagen_estado:
    imagen_true: ./zoon_on.png
    imagen_false: ./zoon_off.png
- nombre: Solo Umaru
  titulo: Solo Umaru
  key: 1
  accion: obs_escena
  opciones:
    escena: Solo_Umaru
  imagen_estado:
    imagen_true: ./codigo_on.png
    imagen_false: ./codigo_off.png
- nombre: Solo Ryuk
  titulo: Solo Ryuk
  key: 2
  accion: obs_escena
  opciones:
    escena: Solo_Ryuk
  imagen_estado:
    imagen_true: ./ryuk_on.png
    imagen_false: ./ryuk_off.png
- nombre: Movil Zoom
  titulo: Movil Zoom
  key: 3
  accion: obs_escena
  opciones:
    escena: Movil_Zoom
  imagen_estado:
    imagen_true: ./circuito_on.png
    imagen_false: ./circuito_off.png
- nombre: Cenital Zoom
  titulo: Cenital Zoom
  key: 4
  accion: obs_escena
  opciones:
    escena: Cenital_Zoom
  imagen_estado:
    imagen_true: ./Cenital_zoon_on.png
    imagen_false: ./Cenital_zoon_off.png
- nombre: Camara
  titulo: Camara
  key: 5
  accion: obs_escena
  opciones:
    escena: Camara
  imagen_estado:
    imagen_true: ./camara_on.png
    imagen_false: ./camara_off.png
- nombre: Umaru
  titulo: Umaru
  key: 6
  accion: obs_escena
  opciones:
    escena: Umaru
  imagen_estado:
    imagen_true: ./umaru_on.png
    imagen_false: ./umaru_off.png
- nombre: Ryuk
  titulo: Ryuk
  key: 7
  accion: obs_escena
  opciones:
    escena: Ryuk
  imagen_estado:
    imagen_true: ./ryuk_on.png
    imagen_false: ./ryuk_off.png
- nombre: Movil
  titulo: Movil
  key: 8
  accion: obs_escena
  opciones:
    escena: Movil
  imagen_estado:
    imagen_true: ./circuito_on.png
    imagen_false: ./circuito_off.png
- nombre: Cenital
  titulo: Cenital
  key: 9
  accion: obs_escena
  opciones:
    escena: Cenital
  imagen_estado:
    imagen_true: ./apoyo_on.png
    imagen_false: ./apoyo_off.png
- nombre: BMO
  titulo: BMO
  key: 10
  accion: mqtt
  opciones:
    mensaje: cambiar
    topic: bmo/despierto
  imagen: ./bmo.gif
- nombre: Verde
  key: 12
  accion: obs_filtro
  opciones:
    fuente: Esena_Camara
    filtro: Verde
  imagen_estado:
    imagen_true: ./verde_on.png
    imagen_false: ./verde_off.png
- nombre: Borde Camara
  key: 13
  accion: obs_filtro
  opciones:
    fuente: Esena_Camara
    filtro: Borde
  imagen_estado:
    imagen_true: ./borde_on.png
    imagen_false: ./borde_off.png
- nombre: Camara
  key: 14
  accion: obs_fuente
  opciones:
    fuente: Esena_Camara
  imagen_estado:
    imagen_true: ./esena_camara_on.png
    imagen_false: ./esena_camara_off.png
- nombre: Inicio
  titulo: Inicio
  key: 15
  accion: obs_escena
  opciones:
    escena: Inicio
  imagen_estado:
    imagen_true: ./empezar_on.png
    imagen_false: ./empezar_off.png
- nombre: PrusaMini
  titulo: PrusaMini
  key: 16
  accion: obs_escena
  opciones:
    escena: PrusaMini
  imagen_estado:
    imagen_true: ./prusa_on.png
    imagen_false: ./prusa_off.png
- nombre: Escena Ryuk
  titulo: 'Super

    Grabar'
  key: 17
  accion: macro
  opciones:
  - accion: obs_grabar_vertical
  - accion: obs_grabar
- nombre: Grabar Vertical
  titulo: Vertical
  key: 18
  accion: obs_grabar_vertical
  imagen_estado:
    imagen_true: defaul/obs/grabar_on.png
    imagen_false: defaul/obs/grabar_off.png
- nombre: Grabar
  key: 19
  accion: obs_grabar
  imagen_estado:
    imagen_true: defaul/obs/grabar_on.png
    imagen_false: defaul/obs/grabar_off.png
- nombre: Fin
  titulo: Fin
  key: 20
  accion: obs_escena
  opciones:
    escena: Fin
  imagen_estado:
    imagen_true: ./fin_on.png
    imagen_false: ./fin_off.png
- nombre: Regreso
  titulo: Regreso
  key: 21
  accion: obs_escena
  opciones:
    escena: Regreso
  imagen_estado:
    imagen_true: ./tiktok_on.png
    imagen_false: ./tiktok_off.png
- nombre: EnVivo
  key: 23
  accion: obs_envivo
  imagen_estado:
    imagen_true: defaul/obs/envivo_on.png
    imagen_false: defaul/obs/envivo_off.png
- nombre: Pausar
  titulo: Pausar
  key: 24
  accion: obs_pausar
  imagen_estado:
    imagen_true: defaul/obs/grabar_on.png
    imagen_false: defaul/obs/grabar_off.png
- nombre: Escena Circuito
  titulo: Circuito
  key: 25
  accion: macro
  opciones:
  - accion: obs_escena
    opciones:
      escena: Circuito
- nombre: WebCamara
  titulo: WebCamara
  key: 29
  accion: obs_camara_virtual
  imagen_estado:
    imagen_true: defaul/obs/grabar_on.png
    imagen_false: defaul/obs/grabar_off.png
...
