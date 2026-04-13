---
- nombre: Wifi en ahorro
  titulo: Wifi\nahorro?
  comentario: Ve si esta en modo ahorro el wifi, no recomendado para servidores
  key: 16
  accion: escribir
  opciones:
    texto: iw dev wlan0 get power_save
- nombre: Wifi en ahorro
  titulo: Apagar\nWifi\nahorro
  key: 17
  accion: escribir
  opciones:
    texto: sudo iw dev wlan0 set power_save off
---