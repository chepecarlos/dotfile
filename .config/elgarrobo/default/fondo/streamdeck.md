---
- nombre: Slideshow Reiniciar
  titulo: Slideshow\nReiniciar
  key: 2
  imagen_opciones:
    fondo: '#0037ff'
  accion: macro
  opciones:
    - accion: os
      opciones:
        comando: gsettings set org.cinnamon.desktop.background.slideshow slideshow-enabled false
    - accion: delay
      opciones:
        tiempo: 0:05
    - accion: os
      opciones:
        comando: gsettings set org.cinnamon.desktop.background.slideshow slideshow-enabled true
- nombre: Slideshow Activar
  titulo: Slideshow\nActivar
  key: 3
  imagen_opciones:
    fondo: '#4dff00'
  accion: os
  opciones:
    comando: gsettings set org.cinnamon.desktop.background.slideshow slideshow-enabled true
- nombre: Slideshow Desactivar
  titulo: Slideshow\nDesactivar
  key: 4
  imagen_opciones:
    fondo: '#ff0000'
  accion: os
  opciones:
    comando: gsettings set org.cinnamon.desktop.background.slideshow slideshow-enabled false
- nombre: Wrestling
  titulo: Wrestling
  key: 7
  accion: os
  opciones:
    comando: gsettings set org.cinnamon.desktop.background.slideshow image-source 'directory:///home/SudoData/ChepeCarlos@alsw.net/6.Umaru/4.Wallpapel/3.Wrestling'
- nombre: Decente
  titulo: Decente
  key: 8
  accion: os
  opciones:
    comando: gsettings set org.cinnamon.desktop.background.slideshow image-source 'directory:///home/SudoData/ChepeCarlos@alsw.net/6.Umaru/4.Wallpapel/1.Decente'
- nombre: Ecchi
  titulo: Ecchi
  key: 9
  accion: os
  opciones:
    comando: gsettings set org.cinnamon.desktop.background.slideshow image-source 'directory:///home/SudoData/ChepeCarlos@alsw.net/6.Umaru/4.Wallpapel/4.Ecchi'
- nombre: Delay 1m
  titulo: Delay\n1m
  key: 18
  accion: os
  opciones:
    comando: gsettings set org.cinnamon.desktop.background.slideshow delay 1
- nombre: Delay 5m
  titulo: Delay\n5m
  key: 19
  accion: os
  opciones:
    comando: gsettings set org.cinnamon.desktop.background.slideshow delay 5
---