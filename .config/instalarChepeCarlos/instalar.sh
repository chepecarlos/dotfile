# Actualizaciones generales
sudo apt update
sudo apt -y upgrade
flatpak --assumeyes -y update 

# Generales
sudo apt install -y barrier scrcpy okular mint-meta-codecs  vlc bleachbit cheese dconf-editor 
flatpak install  --assumeyes -y -v  org.telegram.desktop com.discordapp.Discord com.github.tchx84.Flatseal io.github.mimbrero.WhatsAppDesktop io.missioncenter.MissionCenter 
 
# Creacion de contenido
sudo apt install -y ffmpeg gromit-mpx dkms audacity shutter
flatpak install  --assumeyes -y -v  org.inkscape.inkscape org.gimp.GIMP com.obsproject.Studio org.blender.blender org.freecadweb.FreeCAD com.prusa3d.PrusaSlicer 

# Audio
sudo apt install -y pavucontrol

# Redes
sudo apt install -y openssh-server nmap mdns-scan filezilla
# Desarollo 
sudo apt install -y git gitg python3-pip meld software-properties-common apt-transport-https ca-certificates gnupg2 curl build-essential exa tree
flatpak install  --assumeyes -y -v com.visualstudio.code
    
