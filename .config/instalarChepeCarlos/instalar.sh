# Actualizaciones generales
sudo apt update
sudo apt -y upgrade
flatpak --assumeyes -y update

# Generales
sudo apt install -y rar barrier scrcpy okular mint-meta-codecs vlc bleachbit cheese dconf-editor
flatpak install --assumeyes -y -v re.sonny.OhMySVG om.github.joseexposito.touche io.github.fabrialberio.pinapp io.github.prateekmedia.appimagepool com.basemark.BasemarkGPU com.ktechpit.ultimate-media-downloader io.github.JakubMelka.Pdf4qt org.linux_hardware.hw-probe org.gabmus.whatip org.telegram.desktop com.discordapp.Discord com.github.tchx84.Flatseal io.github.mimbrero.WhatsAppDesktop io.missioncenter.MissionCenter io.github.flattool.Warehouse

# Creacion de contenido
sudo apt install -y ffmpeg gromit-mpx dkms audacity shutter
flatpak install --assumeyes -y -v org.flozz.yoga-image-optimizer com.ktechpit.ultimate-media-downloader io.gitlab.adhami3310.Converter org.inkscape.inkscape org.gimp.GIMP com.obsproject.Studio org.blender.blender org.freecadweb.FreeCAD com.prusa3d.PrusaSlicer
pip install bpsrender

# Audio
sudo apt install -y pavucontrol paprefs

# Redes
sudo apt install -y openssh-server nmap mdns-scan filezilla
flatpak install --assumeyes -y -v com.protonvpn.www org.upnproutercontrol.UPnPRouterControl

# Desarollo
sudo apt install -y gnupg ruby-full build-essential zlib1g-dev mosquitto-clients ruby-bundler git gitg python3-pip meld software-properties-common apt-transport-https ca-certificates gnupg2 curl build-essential tree libxcb-cursor0
flatpak install --assumeyes -y -v libusb-1.0-0-dev com.visualstudio.code cc.arduino.IDE2 cc.arduino.arduinoide com.felipekinoshita.Wildcard
pip install pyside6

# fuentes
sudo apt install -y ttf-mscorefonts-installer

# Educaccion
flatpak install --assumeyes -y -v com.felipekinoshita.Kana io.github.fkinoshita.Telegraph
