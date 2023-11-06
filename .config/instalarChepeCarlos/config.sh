
# Investigar con esto
# gsettings list-recursively >> polloBase.txt

# quitar iconos de escritorio
gsettings set org.nemo.desktop desktop-layout 'false::false'

# cambia escritorio y ventanas en esquinas
gsettings set org.cinnamon hotcorner-layout "['expo:true:0', 'expo:true:0', 'scale:true:0', 'scale:true:0']"
