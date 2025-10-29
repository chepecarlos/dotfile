#!/bin/sh

# Investigar con esto
# gsettings list-recursively >> polloBase.txt

# quitar iconos de escritorio
gsettings set org.nemo.desktop desktop-layout 'false::false'

# cambia escritorio y ventanas en esquinas
gsettings set org.cinnamon hotcorner-layout "['expo:true:0', 'expo:true:0', 'scale:true:0', 'scale:true:0']"

# activar zoon en ventana
gsettings set org.cinnamon.desktop.a11y.applications screen-magnifier-enabled true
gsettings set org.cinnamon.desktop.wm.preferences mouse-button-zoom-modifier '<Super>'

#Repar Problema con Blender con Agarar bentanss Alt
# Super para arrastrar ventanas
gsettings set org.cinnamon.desktop.wm.preferences mouse-button-modifier '<Super>'
