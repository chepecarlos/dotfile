---
- nombre: Zoom
  titulo: Zoom
  key: 1
  accion: macro
  opciones:
  - accion: obs_escena
    opciones:
      escena: Zoom
  - accion: obs_escena_vertical
    opciones:
      escena: Zoom_V
  imagen_estado:
    imagen_true: ./zoon_on.png
    imagen_false: ./zoon_off.png
- nombre: Solo Umaru
  titulo: Solo Umaru
  key: 2
  accion: obs_escena
  opciones:
    escena: Solo_Umaru
  imagen_estado:
    imagen_true: ./codigo_on.png
    imagen_false: ./codigo_off.png
- nombre: Solo Ryuk
  titulo: Solo Ryuk
  key: 3
  accion: obs_escena
  opciones:
    escena: Solo_Ryuk
  imagen_estado:
    imagen_true: ./ryuk_on.png
    imagen_false: ./ryuk_off.png
- nombre: Movil Zoom
  titulo: Movil Zoom
  key: 4
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
- nombre: Entrevista
  titulo: Entrevista
  key: 5
  accion: obs_escena
  opciones:
    escena: Entrevista
  imagen_estado:
    imagen_true: ./camara_on.png
    imagen_false: ./camara_off.png
- nombre: Camara
  titulo: Camara
  key: 6
  accion: obs_escena
  opciones:
    escena: Camara
  imagen_estado:
    imagen_true: ./camara_on.png
    imagen_false: ./camara_off.png
- nombre: Umaru
  titulo: Umaru
  key: 7
  accion: obs_escena
  opciones:
    escena: Umaru
  imagen_estado:
    imagen_true: ./umaru_on.png
    imagen_false: ./umaru_off.png
- nombre: Ryuk
  titulo: Ryuk
  key: 8
  accion: obs_escena
  opciones:
    escena: Ryuk
  imagen_estado:
    imagen_true: ./ryuk_on.png
    imagen_false: ./ryuk_off.png
- nombre: Movil
  titulo: Movil
  key: 9
  accion: obs_escena
  opciones:
    escena: Movil
  imagen_estado:
    imagen_true: ./circuito_on.png
    imagen_false: ./circuito_off.png
- nombre: Cenital
  titulo: Cenital
  key: 10
  accion: obs_escena
  opciones:
    escena: Cenital
  imagen_estado:
    imagen_true: ./apoyo_on.png
    imagen_false: ./apoyo_off.png
- nombre: BMO
  titulo: BMO
  key: 11
  accion: mqtt
  opciones:
    mensaje: cambiar
    topic: bmo/despierto
  imagen: ./bmo.gif
- nombre: Cenital Extra
  titulo: ExCenital
  key: 12
  accion: obs_fuente
  opciones:
    fuente: Escena_Cenital
  imagen_estado:
    imagen_true: ./circuito_on.png
    imagen_false: ./circuito_off.png
- nombre: Verde
  key: 13
  accion: obs_filtro
  opciones:
    fuente: Esena_Camara
    filtro: Verde
  imagen_estado:
    imagen_true: ./verde_on.png
    imagen_false: ./verde_off.png
- nombre: Borde Camara
  key: 14
  accion: obs_filtro
  opciones:
    fuente: Esena_Camara
    filtro: Borde
  imagen_estado:
    imagen_true: ./borde_on.png
    imagen_false: ./borde_off.png
- nombre: Camara
  key: 15
  accion: obs_fuente
  opciones:
    fuente: Esena_Camara
  imagen_estado:
    imagen_true: ./esena_camara_on.png
    imagen_false: ./esena_camara_off.png
- nombre: Inicio
  titulo: Inicio
  key: 16
  accion: obs_escena
  opciones:
    escena: Inicio
  imagen_estado:
    imagen_true: ./empezar_on.png
    imagen_false: ./empezar_off.png
- nombre: PrusaMini
  titulo: PrusaMini
  key: 17
  accion: obs_escena
  opciones:
    escena: PrusaMini
  imagen_estado:
    imagen_true: ./prusa_on.png
    imagen_false: ./prusa_off.png
- nombre: Escena Ryuk
  titulo: 'Super

    Grabar'
  key: 18
  accion: macro
  opciones:
  - accion: obs_grabar_vertical
  - accion: obs_grabar
- nombre: Grabar Vertical
  titulo: Vertical
  key: 19
  accion: obs_grabar_vertical
  imagen_estado:
    imagen_true: /obs/grabar_on.png
    imagen_false: /obs/grabar_off.png
- nombre: Grabar
  key: 20
  accion: obs_grabar
  imagen_estado:
    imagen_true: /obs/grabar_on.png
    imagen_false: /obs/grabar_off.png
- nombre: Fin
  titulo: Fin
  key: 21
  accion: obs_escena
  opciones:
    escena: Fin
  imagen_estado:
    imagen_true: ./fin_on.png
    imagen_false: ./fin_off.png
- nombre: Regreso
  titulo: Regreso
  key: 22
  accion: obs_escena
  opciones:
    escena: Regreso
  imagen_estado:
    imagen_true: ./tiktok_on.png
    imagen_false: ./tiktok_off.png
- nombre: EnVivo
  key: 24
  accion: obs_envivo
  imagen_estado:
    imagen_true: /obs/envivo_on.png
    imagen_false: /obs/envivo_off.png
- nombre: Pausar
  titulo: Pausar
  key: 25
  accion: obs_pausar
  imagen_estado:
    imagen_true: /obs/grabar_on.png
    imagen_false: /obs/grabar_off.png
- nombre: Escena Circuito
  titulo: Circuito
  key: 26
  accion: macro
  opciones:
  - accion: obs_escena
    opciones:
      escena: Circuito
- nombre: Area Segura
  titulo: Area Segura
  key: 27
  accion:
- nombre: WebCamara
  titulo: WebCamara
  key: 30
  accion: obs_camara_virtual
  imagen_estado:
    imagen_true: /obs/grabar_on.png
    imagen_false: /obs/grabar_off.png
- nombre: Borde
  titulo: Borde
  key: 31
  accion: macro
  opciones:
  - accion: obs_filtro
    opciones:
      fuente: Esena_Camara
      filtro: Trazo_Blanco
  - accion: obs_filtro
    opciones:
      fuente: Esena_Camara
      filtro: Trazo_Acua
  - accion: obs_filtro
    opciones:
      fuente: Esena_Camara
      filtro: Trazo_Recorte
  - accion: obs_filtro
    opciones:
      fuente: Esena_Camara
      filtro: Trazo_Recorte
- nombre: Similitud +10
  titulo: Similitud\n+10
  key: 36
  accion: obs_filtro_propiedad
  opciones:
    fuente: Esena_Camara
    filtro: Verde
    agregar: True
    propiedad: similarity
    valor: +10
- nombre: Similitud +1
  titulo: Similitud\n+1
  key: 37
  accion: obs_filtro_propiedad
  opciones:
    fuente: Esena_Camara
    filtro: Verde
    agregar: True
    propiedad: similarity
    valor: +1
- nombre: suavizado +1
  titulo: suavizado\n+1
  key: 39
  accion: obs_filtro_propiedad
  opciones:
    fuente: Esena_Camara
    filtro: Verde
    agregar: true
    propiedad: smoothness
    valor: +1
- nombre: suavizado +10
  titulo: suavizado\n+10
  key: 40
  accion: obs_filtro_propiedad
  opciones:
    fuente: Esena_Camara
    filtro: Verde
    agregar: true
    propiedad: smoothness
    valor: +10


- nombre: Similitud -10
  titulo: Similitud\n-10
  key: 41
  accion: obs_filtro_propiedad
  opciones:
    fuente: Esena_Camara
    filtro: Verde
    agregar: true
    propiedad: similarity
    valor: -10
- nombre: Similitud -1
  titulo: Similitud\n-1
  key: 42
  accion: obs_filtro_propiedad
  opciones:
    fuente: Esena_Camara
    filtro: Verde
    agregar: true
    propiedad: similarity
    valor: -1
- nombre: suavizado -1
  titulo: suavizado\n-1
  key: 44
  accion: obs_filtro_propiedad
  opciones:
    fuente: Esena_Camara
    filtro: Verde
    agregar: true
    propiedad: smoothness
    valor: -1
- nombre: suavizado -10
  titulo: suavizado\n-10
  key: 45
  accion: obs_filtro_propiedad
  opciones:
    fuente: Esena_Camara
    filtro: Verde
    agregar: true
    propiedad: smoothness
    valor: -10
- nombre: Titulo
  titulo: Titulo\nEnVivo
  imagen_opciones:
    fondo: '#051153ff'
  key: 23
  accion: obs_fuente
  opciones:
    fuente: TituloEnvivo
- nombre: Conectar
  titulo: Conectar
  imagen_opciones:
    fondo: '#4F4'
  key: 60
  accion: obs_conectar
- nombre: Desconectar
  titulo: Desconectar
  imagen_opciones:
    fondo: '#F44'
  key: 59
  accion: obs_desconectar
...
