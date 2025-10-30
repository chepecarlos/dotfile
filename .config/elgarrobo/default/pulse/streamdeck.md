---
- nombre: +5% AT2035
  titulo: +5%
  key: 1
  accion: volumen
  opciones:
    dispositivo: AT2035
    opcion: incremento
    valor: 5
  imagen: ./mic.png
- nombre: +5% Audiencia
  titulo: +5%
  key: 2
  accion: volumen
  opciones:
    dispositivo: MicrofonoZoom
    opcion: incremento
    valor: 5
  imagen: ./discord.png
- nombre: +5% Umaru
  titulo: +5%
  key: 3
  accion: volumen
  opciones:
    dispositivo: Umaru
    opcion: incremento
    valor: 5
  imagen: ./umaru.png
- nombre: +5% Ryuk
  titulo: +5%
  key: 4
  accion: volumen
  opciones:
    dispositivo: Ryuk
    opcion: incremento
    valor: 5
  imagen: ./Ryuk.gif
- nombre: +5% ElGarrobo
  titulo: +5%
  key: 5
  accion: volumen
  opciones:
    dispositivo: ElGarrobo
    opcion: incremento
    valor: 5
  imagen: ./derpy.png
- nombre: Mute AT2035
  titulo: Mute
  key: 6
  accion: mute
  opciones:
    dispositivo: AT2035
  cargar_titulo:
    archivo: data/pulse
    atributo: AT2035
- nombre: Mute Audiencia
  key: 7
  accion: mute
  opciones:
    dispositivo: MicrofonoZoom
  cargar_titulo:
    archivo: data/pulse
    atributo: MicrofonoZoom
- nombre: Mute Umaru
  key: 8
  accion: mute
  opciones:
    dispositivo: Umaru
  cargar_titulo:
    archivo: data/pulse
    atributo: Umaru
- nombre: Mute Ryuk
  key: 9
  accion: mute
  opciones:
    dispositivo: Ryuk
  cargar_titulo:
    archivo: data/pulse
    atributo: Ryuk
- nombre: Mute ElGarrobo
  key: 10
  accion: mute
  opciones:
    dispositivo: ElGarrobo
  cargar_titulo:
    archivo: data/pulse
    atributo: ElGarrobo
- nombre: -5% MicLimpio
  titulo: -5%
  key: 11
  accion: volumen
  opciones:
    dispositivo: AT2035
    opcion: incremento
    valor: -5
  imagen: ./mic.png
- nombre: -5% Audiencia
  titulo: -5%
  key: 12
  accion: volumen
  opciones:
    dispositivo: MicrofonoZoom
    opcion: incremento
    valor: -5
  imagen: ./discord.png
- nombre: -5% Umaru
  titulo: -5%
  key: 13
  accion: volumen
  opciones:
    dispositivo: Umaru
    opcion: incremento
    valor: -5
  imagen: ./umaru.png
- nombre: -5% Ryuk
  titulo: -5%
  key: 14
  accion: volumen
  opciones:
    dispositivo: Ryuk
    opcion: incremento
    valor: -5
  imagen: ./Ryuk.gif
- nombre: -5% ElGarrobo
  titulo: -5%
  key: 15
  accion: volumen
  opciones:
    dispositivo: ElGarrobo
    opcion: incremento
    valor: -5
  imagen: ./derpy.png
- nombre: +5% SoloYo
  titulo: +5%
  key: 16
  accion: volumen
  opciones:
    dispositivo: SoloYo
    opcion: incremento
    valor: 5
  imagen: ./wrestling.png
- nombre: +5% MisAudifonos
  titulo: +5%
  key: 17
  accion: volumen
  opciones:
    dispositivo: MisAudifonos
    opcion: incremento
    valor: 5
  imagen: ./audifonos.png
- nombre: +5% SoloOBS
  titulo: +5%
  key: 18
  accion: volumen
  opciones:
    dispositivo: SoloOBS
    opcion: incremento
    valor: 5
  imagen: ./obs.png
- nombre: +5% Audifno Audiencia
  titulo: +5%
  key: 20
  accion: volumen
  opciones:
    dispositivo: MicrofonoZoom
    opcion: incremento
    valor: 5
  imagen: ./solo_audiencia.png
- nombre: Mute SoloYo
  key: 21
  accion: mute
  opciones:
    dispositivo: SoloYo
  cargar_titulo:
    archivo: data/pulse
    atributo: SoloYo
- nombre: Mute SoloYo
  key: 22
  accion: mute
  opciones:
    dispositivo: MisAudifonos
  cargar_titulo:
    archivo: data/pulse
    atributo: MisAudifonos
- nombre: Mute MisAudifonos
  key: 23
  accion: mute
  opciones:
    dispositivo: SoloOBS
  cargar_titulo:
    archivo: data/pulse
    atributo: SoloOBS
- nombre: cambiar Audiencia
  titulo: Cambiar
  key: 24
  accion: macro
  opciones:
  - accion: mute
    opciones:
      dispositivo: MicrofonoZoom
  - accion: mute
    opciones:
      dispositivo: MicrofonoZoom
  imagen: ./antonio.png
  imagen_opciones:
    fondo: '#800080'
- nombre: Mute Audifno Audiencia
  key: 25
  accion: mute
  opciones:
    dispositivo: MicrofonoZoom
  cargar_titulo:
    archivo: data/pulse
    atributo: MicrofonoZoom
- nombre: -5% SoloYo
  titulo: -5%
  key: 26
  accion: volumen
  opciones:
    dispositivo: SoloYo
    opcion: incremento
    valor: -5
  imagen: ./wrestling.png
- nombre: -5% MisAudifonos
  titulo: -5%
  key: 27
  accion: volumen
  opciones:
    dispositivo: MisAudifonos
    opcion: incremento
    valor: -5
  imagen: ./audifonos.png
- nombre: -5% SoloOBS
  titulo: -5%
  key: 28
  accion: volumen
  opciones:
    dispositivo: SoloOBS
    opcion: incremento
    valor: -5
  imagen: ./obs.png
- nombre: -5% MicrofonoZoom
  titulo: -5%
  key: 30
  accion: volumen
  opciones:
    dispositivo: MicrofonoZoom
    opcion: incremento
    valor: -5
  imagen: ./solo_audiencia.png
- nombre: 100% AT2035
  titulo: 100%
  key: 31
  accion: volumen
  opciones:
    dispositivo: AT2035
    opcion: asignar
    valor: 100
  imagen: ./mic.png
- nombre: 100% MicrofonoZoom
  titulo: 100%
  key: 32
  accion: volumen
  opciones:
    dispositivo: MicrofonoZoom
    opcion: asignar
    valor: 100
  imagen: ./discord.png
- nombre: 100% Umaru
  titulo: 100%
  key: 33
  accion: volumen
  opciones:
    dispositivo: Umaru
    opcion: asignar
    valor: 100
  imagen: ./umaru.png
- nombre: 100% Ryuk
  titulo: 100%
  key: 34
  accion: volumen
  opciones:
    dispositivo: Ryuk
    opcion: asignar
    valor: 100
  imagen: ./Ryuk.gif
- nombre: 100% ElGarrobo
  titulo: 100%
  key: 35
  accion: volumen
  opciones:
    dispositivo: ElGarrobo
    opcion: asignar
    valor: 100
  imagen: ./derpy.png
- nombre: 50% AT2035
  titulo: 50%
  key: 36
  accion: volumen
  opciones:
    dispositivo: AT2035
    opcion: asignar
    valor: 50
  imagen: ./mic.png
- nombre: 50% MicrofonoZoom
  titulo: 50%
  key: 37
  accion: volumen
  opciones:
    dispositivo: MicrofonoZoom
    opcion: asignar
    valor: 50
  imagen: ./discord.png
- nombre: 50% Umaru
  titulo: 50%
  key: 38
  accion: volumen
  opciones:
    dispositivo: Umaru
    opcion: asignar
    valor: 50
  imagen: ./umaru.png
- nombre: 50% Ryuk
  titulo: 50%
  key: 39
  accion: volumen
  opciones:
    dispositivo: Ryuk
    opcion: asignar
    valor: 50
  imagen: ./Ryuk.gif
- nombre: 50% ElGarrobo
  titulo: 50%
  key: 40
  accion: volumen
  opciones:
    dispositivo: ElGarrobo
    opcion: asignar
    valor: 50
  imagen: ./derpy.png
- nombre: 0% AT2035
  titulo: 0%
  key: 41
  accion: volumen
  opciones:
    dispositivo: AT2035
    opcion: asignar
    valor: 0
  imagen: ./mic.png
- nombre: 0% MicrofonoZoom
  titulo: 0%
  key: 42
  accion: volumen
  opciones:
    dispositivo: MicrofonoZoom
    opcion: asignar
    valor: 0
  imagen: ./discord.png
- nombre: 0% Umaru
  titulo: 0%
  key: 43
  accion: volumen
  opciones:
    dispositivo: Umaru
    opcion: asignar
    valor: 0
  imagen: ./umaru.png
- nombre: 0% Ryuk
  titulo: 0%
  key: 44
  accion: volumen
  opciones:
    dispositivo: Ryuk
    opcion: asignar
    valor: 0
  imagen: ./Ryuk.gif
- nombre: 0% ElGarrobo
  titulo: 0%
  key: 45
  accion: volumen
  opciones:
    dispositivo: ElGarrobo
    opcion: asignar
    valor: 0
  imagen: ./derpy.png
- nombre: 100% SoloYo
  titulo: 100%
  key: 46
  accion: volumen
  opciones:
    dispositivo: SoloYo
    opcion: asignar
    valor: 100
  imagen: ./wrestling.png
- nombre: 100% MisAudifonos
  titulo: 100%
  key: 47
  accion: volumen
  opciones:
    dispositivo: MisAudifonos
    opcion: asignar
    valor: 100
  imagen: ./audifonos.png
- nombre: 100% SoloOBS
  titulo: 100%
  key: 48
  accion: volumen
  opciones:
    dispositivo: SoloOBS
    opcion: asignar
    valor: 100
  imagen: ./obs.png
- nombre: 100% MicrofonoZoom
  titulo: 100%
  key: 50
  accion: volumen
  opciones:
    dispositivo: MicrofonoZoom
    opcion: asignar
    valor: 100
  imagen: ./solo_audiencia.png
- nombre: 50% SoloYo
  titulo: 50%
  key: 51
  accion: volumen
  opciones:
    dispositivo: SoloYo
    opcion: asignar
    valor: 50
  imagen: ./wrestling.png
- nombre: 50% MisAudifonos
  titulo: 50%
  key: 52
  accion: volumen
  opciones:
    dispositivo: MisAudifonos
    opcion: asignar
    valor: 50
  imagen: ./audifonos.png
- nombre: 50% SoloOBS
  titulo: 50%
  key: 53
  accion: volumen
  opciones:
    dispositivo: SoloOBS
    opcion: asignar
    valor: 50
  imagen: ./obs.png
- nombre: 50% MicrofonoZoom
  titulo: 50%
  key: 55
  accion: volumen
  opciones:
    dispositivo: MicrofonoZoom
    opcion: asignar
    valor: 50
  imagen: ./solo_audiencia.png
- nombre: 0% SoloYo
  titulo: 0%
  key: 56
  accion: volumen
  opciones:
    dispositivo: SoloYo
    opcion: asignar
    valor: 0
  imagen: ./wrestling.png
- nombre: 0% MisAudifonos
  titulo: 0%
  key: 57
  accion: volumen
  opciones:
    dispositivo: MisAudifonos
    opcion: asignar
    valor: 0
  imagen: ./audifonos.png
- nombre: 0% SoloOBS
  titulo: 0%
  key: 58
  accion: volumen
  opciones:
    dispositivo: SoloOBS
    opcion: asignar
    valor: 0
  imagen: ./obs.png
- nombre: 0% MicrofonoZoom
  titulo: 0%
  key: 60
  accion: volumen
  opciones:
    dispositivo: MicrofonoZoom
    opcion: asignar
    valor: 0
  imagen: ./solo_audiencia.png
- nombre: Umaru Izquierda
  titulo: Izquierda
  key: 63
  accion: volumen
  opciones:
    dispositivo: Umaru
    opcion: balance
    valor: 0
  imagen: ./umaru.png
- nombre: Ryuk Izquierda
  titulo: Izquierda
  key: 64
  accion: volumen
  opciones:
    dispositivo: Ryuk
    opcion: balance
    valor: 0
  imagen: ./Ryuk.gif
- nombre: Umaru Centro
  titulo: Centro
  key: 68
  accion: volumen
  opciones:
    dispositivo: Umaru
    opcion: balance
    valor: 50
  imagen: ./umaru.png
  cargar_titulo:
    archivo: data/pulse
    atributo: Mic_Limpio_balance
- nombre: Ryuk Centro
  titulo: Centro
  key: 69
  accion: volumen
  opciones:
    dispositivo: Ryuk
    opcion: balance
    valor: 50
  imagen: ./Ryuk.gif
  cargar_titulo:
    archivo: data/pulse
    atributo: Ryuk
- nombre: Umaru Derecha
  titulo: Derecha
  key: 73
  accion: volumen
  opciones:
    dispositivo: Umaru
    opcion: balance
    valor: 100
  imagen: ./umaru.png
- nombre: Ryuk Derecha
  titulo: Derecha
  key: 74
  accion: volumen
  opciones:
    dispositivo: Ryuk
    opcion: balance
    valor: 100
  imagen: ./Ryuk.gif
...
