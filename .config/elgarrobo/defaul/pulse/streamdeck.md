---
- nombre: +5% MicLimpio
  titulo: +5%
  key: 0
  accion: volumen
  opciones:
    dispositivo: Mic_Limpio
    opcion: incremento
    valor: 5
  imagen: ./mic.png
- nombre: +5% Audiencia
  titulo: +5%
  key: 1
  accion: volumen
  opciones:
    dispositivo: Microfono_Audiencia
    opcion: incremento
    valor: 5
  imagen: ./discord.png
- nombre: +5% UmaruRed
  titulo: +5%
  key: 2
  accion: volumen
  opciones:
    dispositivo: UmaruRed
    opcion: incremento
    valor: 5
  imagen: ./umaru.png
- nombre: +5% Firefox
  titulo: +5%
  key: 3
  accion: volumen
  opciones:
    dispositivo: Firefox
    opcion: incremento
    valor: 5
  imagen: ./firefox.png
- nombre: +5% ElGatoALSW
  titulo: +5%
  key: 4
  accion: volumen
  opciones:
    dispositivo: ElGatoALSW
    opcion: incremento
    valor: 5
  imagen: ./derpy.png
- nombre: Mute MicLimpio
  titulo: Mute
  key: 5
  accion: mute
  opciones:
    dispositivo: Mic_Limpio
  cargar_titulo:
    archivo: data/pulse
    atributo: Mic_Limpio
- nombre: Mute Audiencia
  key: 6
  accion: mute
  opciones:
    dispositivo: Microfono_Audiencia
  cargar_titulo:
    archivo: data/pulse
    atributo: Microfono_Audiencia
- nombre: Mute UmaruRed
  key: 7
  accion: mute
  opciones:
    dispositivo: UmaruRed
  cargar_titulo:
    archivo: data/pulse
    atributo: UmaruRed
- nombre: Mute Firefox
  key: 8
  accion: mute
  opciones:
    dispositivo: Firefox
  cargar_titulo:
    archivo: data/pulse
    atributo: Firefox
- nombre: Mute ElGatoALSW
  key: 9
  accion: mute
  opciones:
    dispositivo: ElGatoALSW
  cargar_titulo:
    archivo: data/pulse
    atributo: ElGatoALSW
- nombre: -5% MicLimpio
  titulo: -5%
  key: 10
  accion: volumen
  opciones:
    dispositivo: Mic_Limpio
    opcion: incremento
    valor: -5
  imagen: ./mic.png
- nombre: -5% Audiencia
  titulo: -5%
  key: 11
  accion: volumen
  opciones:
    dispositivo: Microfono_Audiencia
    opcion: incremento
    valor: -5
  imagen: ./discord.png
- nombre: -5% UmaruRed
  titulo: -5%
  key: 12
  accion: volumen
  opciones:
    dispositivo: UmaruRed
    opcion: incremento
    valor: -5
  imagen: ./umaru.png
- nombre: -5% Firefox
  titulo: -5%
  key: 13
  accion: volumen
  opciones:
    dispositivo: Firefox
    opcion: incremento
    valor: -5
  imagen: ./firefox.png
- nombre: -5% ElGatoALSW
  titulo: -5%
  key: 14
  accion: volumen
  opciones:
    dispositivo: ElGatoALSW
    opcion: incremento
    valor: -5
  imagen: ./derpy.png
- nombre: +5% SoloYo
  titulo: +5%
  key: 15
  accion: volumen
  opciones:
    dispositivo: SoloYo
    opcion: incremento
    valor: 5
  imagen: ./wrestling.png
- nombre: +5% MisAudifonos
  titulo: +5%
  key: 16
  accion: volumen
  opciones:
    dispositivo: MisAudifonos
    opcion: incremento
    valor: 5
  imagen: ./audifonos.png
- nombre: +5% SoloOBS
  titulo: +5%
  key: 17
  accion: volumen
  opciones:
    dispositivo: SoloOBS
    opcion: incremento
    valor: 5
  imagen: ./obs.png
- nombre: +5% Audifno Audiencia
  titulo: +5%
  key: 19
  accion: volumen
  opciones:
    dispositivo: Audifonos_Audiencia
    opcion: incremento
    valor: 5
  imagen: ./solo_audiencia.png
- nombre: Mute SoloYo
  key: 20
  accion: mute
  opciones:
    dispositivo: SoloYo
  cargar_titulo:
    archivo: data/pulse
    atributo: SoloYo
- nombre: Mute SoloYo
  key: 21
  accion: mute
  opciones:
    dispositivo: MisAudifonos
  cargar_titulo:
    archivo: data/pulse
    atributo: MisAudifonos
- nombre: Mute MisAudifonos
  key: 22
  accion: mute
  opciones:
    dispositivo: SoloOBS
  cargar_titulo:
    archivo: data/pulse
    atributo: SoloOBS
- nombre: cambiar Audiencia
  titulo: Cambiar
  key: 23
  accion: macro
  opciones:
  - accion: mute
    opciones:
      dispositivo: Microfono_Audiencia
  - accion: mute
    opciones:
      dispositivo: Audifonos_Audiencia
  imagen: ./antonio.png
  imagen_opciones:
    fondo: '#800080'
- nombre: Mute Audifno Audiencia
  key: 24
  accion: mute
  opciones:
    dispositivo: Audifonos_Audiencia
  cargar_titulo:
    archivo: data/pulse
    atributo: Audifonos_Audiencia
- nombre: -5% SoloYo
  titulo: -5%
  key: 25
  accion: volumen
  opciones:
    dispositivo: SoloYo
    opcion: incremento
    valor: -5
  imagen: ./wrestling.png
- nombre: -5% MisAudifonos
  titulo: -5%
  key: 26
  accion: volumen
  opciones:
    dispositivo: MisAudifonos
    opcion: incremento
    valor: -5
  imagen: ./audifonos.png
- nombre: -5% SoloOBS
  titulo: -5%
  key: 27
  accion: volumen
  opciones:
    dispositivo: SoloOBS
    opcion: incremento
    valor: -5
  imagen: ./obs.png
- nombre: -5% Audifonos_Audiencia
  titulo: -5%
  key: 29
  accion: volumen
  opciones:
    dispositivo: Audifonos_Audiencia
    opcion: incremento
    valor: -5
  imagen: ./solo_audiencia.png
- nombre: 100% Mic_Limpio
  titulo: 100%
  key: 30
  accion: volumen
  opciones:
    dispositivo: Mic_Limpio
    opcion: asignar
    valor: 100
  imagen: ./mic.png
- nombre: 100% Microfono_Audiencia
  titulo: 100%
  key: 31
  accion: volumen
  opciones:
    dispositivo: Microfono_Audiencia
    opcion: asignar
    valor: 100
  imagen: ./discord.png
- nombre: 100% UmaruRed
  titulo: 100%
  key: 32
  accion: volumen
  opciones:
    dispositivo: UmaruRed
    opcion: asignar
    valor: 100
  imagen: ./umaru.png
- nombre: 100% Firefox
  titulo: 100%
  key: 33
  accion: volumen
  opciones:
    dispositivo: Firefox
    opcion: asignar
    valor: 100
  imagen: ./firefox.png
- nombre: 100% ElGatoALSW
  titulo: 100%
  key: 34
  accion: volumen
  opciones:
    dispositivo: ElGatoALSW
    opcion: asignar
    valor: 100
  imagen: ./derpy.png
- nombre: 50% Mic_Limpio
  titulo: 50%
  key: 35
  accion: volumen
  opciones:
    dispositivo: Mic_Limpio
    opcion: asignar
    valor: 50
  imagen: ./mic.png
- nombre: 50% Microfono_Audiencia
  titulo: 50%
  key: 36
  accion: volumen
  opciones:
    dispositivo: Microfono_Audiencia
    opcion: asignar
    valor: 50
  imagen: ./discord.png
- nombre: 50% UmaruRed
  titulo: 50%
  key: 37
  accion: volumen
  opciones:
    dispositivo: UmaruRed
    opcion: asignar
    valor: 50
  imagen: ./umaru.png
- nombre: 50% Firefox
  titulo: 50%
  key: 38
  accion: volumen
  opciones:
    dispositivo: Firefox
    opcion: asignar
    valor: 50
  imagen: ./firefox.png
- nombre: 50% ElGatoALSW
  titulo: 50%
  key: 39
  accion: volumen
  opciones:
    dispositivo: ElGatoALSW
    opcion: asignar
    valor: 50
  imagen: ./derpy.png
- nombre: 0% Mic_Limpio
  titulo: 0%
  key: 40
  accion: volumen
  opciones:
    dispositivo: Mic_Limpio
    opcion: asignar
    valor: 0
  imagen: ./mic.png
- nombre: 0% Microfono_Audiencia
  titulo: 0%
  key: 41
  accion: volumen
  opciones:
    dispositivo: Microfono_Audiencia
    opcion: asignar
    valor: 0
  imagen: ./discord.png
- nombre: 0% UmaruRed
  titulo: 0%
  key: 42
  accion: volumen
  opciones:
    dispositivo: UmaruRed
    opcion: asignar
    valor: 0
  imagen: ./umaru.png
- nombre: 0% Firefox
  titulo: 0%
  key: 43
  accion: volumen
  opciones:
    dispositivo: Firefox
    opcion: asignar
    valor: 0
  imagen: ./firefox.png
- nombre: 0% ElGatoALSW
  titulo: 0%
  key: 44
  accion: volumen
  opciones:
    dispositivo: ElGatoALSW
    opcion: asignar
    valor: 0
  imagen: ./derpy.png
- nombre: 100% SoloYo
  titulo: 100%
  key: 45
  accion: volumen
  opciones:
    dispositivo: SoloYo
    opcion: asignar
    valor: 100
  imagen: ./wrestling.png
- nombre: 100% MisAudifonos
  titulo: 100%
  key: 46
  accion: volumen
  opciones:
    dispositivo: MisAudifonos
    opcion: asignar
    valor: 100
  imagen: ./audifonos.png
- nombre: 100% SoloOBS
  titulo: 100%
  key: 47
  accion: volumen
  opciones:
    dispositivo: SoloOBS
    opcion: asignar
    valor: 100
  imagen: ./obs.png
- nombre: 100% Audifonos_Audiencia
  titulo: 100%
  key: 49
  accion: volumen
  opciones:
    dispositivo: Audifonos_Audiencia
    opcion: asignar
    valor: 100
  imagen: ./solo_audiencia.png
- nombre: 50% SoloYo
  titulo: 50%
  key: 50
  accion: volumen
  opciones:
    dispositivo: SoloYo
    opcion: asignar
    valor: 50
  imagen: ./wrestling.png
- nombre: 50% MisAudifonos
  titulo: 50%
  key: 51
  accion: volumen
  opciones:
    dispositivo: MisAudifonos
    opcion: asignar
    valor: 50
  imagen: ./audifonos.png
- nombre: 50% SoloOBS
  titulo: 50%
  key: 52
  accion: volumen
  opciones:
    dispositivo: SoloOBS
    opcion: asignar
    valor: 50
  imagen: ./obs.png
- nombre: 50% Audifonos_Audiencia
  titulo: 50%
  key: 54
  accion: volumen
  opciones:
    dispositivo: Audifonos_Audiencia
    opcion: asignar
    valor: 50
  imagen: ./solo_audiencia.png
- nombre: 0% SoloYo
  titulo: 0%
  key: 55
  accion: volumen
  opciones:
    dispositivo: SoloYo
    opcion: asignar
    valor: 0
  imagen: ./wrestling.png
- nombre: 0% MisAudifonos
  titulo: 0%
  key: 56
  accion: volumen
  opciones:
    dispositivo: MisAudifonos
    opcion: asignar
    valor: 0
  imagen: ./audifonos.png
- nombre: 0% SoloOBS
  titulo: 0%
  key: 57
  accion: volumen
  opciones:
    dispositivo: SoloOBS
    opcion: asignar
    valor: 0
  imagen: ./obs.png
- nombre: 0% Audifonos_Audiencia
  titulo: 0%
  key: 59
  accion: volumen
  opciones:
    dispositivo: Audifonos_Audiencia
    opcion: asignar
    valor: 0
  imagen: ./solo_audiencia.png
- nombre: UmaruRed Izquierda
  titulo: Izquierda
  key: 62
  accion: volumen
  opciones:
    dispositivo: UmaruRed
    opcion: balance
    valor: 0
  imagen: ./umaru.png
- nombre: Firefox Izquierda
  titulo: Izquierda
  key: 63
  accion: volumen
  opciones:
    dispositivo: Firefox
    opcion: balance
    valor: 0
  imagen: ./firefox.png
- nombre: UmaruRed Centro
  titulo: Centro
  key: 67
  accion: volumen
  opciones:
    dispositivo: UmaruRed
    opcion: balance
    valor: 50
  imagen: ./umaru.png
  cargar_titulo:
    archivo: data/pulse
    atributo: Mic_Limpio_balance
- nombre: Firefox Centro
  titulo: Centro
  key: 68
  accion: volumen
  opciones:
    dispositivo: Firefox
    opcion: balance
    valor: 50
  imagen: ./firefox.png
- nombre: UmaruRed Derecha
  titulo: Derecha
  key: 72
  accion: volumen
  opciones:
    dispositivo: UmaruRed
    opcion: balance
    valor: 100
  imagen: ./umaru.png
- nombre: Firefox Derecha
  titulo: Derecha
  key: 73
  accion: volumen
  opciones:
    dispositivo: Firefox
    opcion: balance
    valor: 100
  imagen: ./firefox.png
...
