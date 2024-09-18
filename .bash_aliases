# .bash_aliase
# Autor: ChepeCarlos <ChepeCarlos@alsw.net>
# Codigo: https://github.com/chepecarlos/dotfile

# Generales
alias ..='cd ..'
alias ...='cd ../..'
alias df='df -h'
alias resetshell='exec $SHELL'
alias mitinta='ink -p usb'
alias miOBS='(flatpak run com.obsproject.Studio > /dev/null 2>&1) &'
alias blender='flatpak run org.blender.Blender'

# Red
alias p='ping 8.8.8.8'
alias miip='hostname -I'
alias miippublica='curl ifconfig.me'
alias mired='nmap -sP 192.168.50.0/24'

# Android
alias miandroid="scrcpy"

# Audio
# alias mimicrofono="noisetorch -i AT2023.monitor -t 80 && pactl load-module module-loopback source=nui_mic_denoised_out.monitor sink=Mic_Limpio latency_msec=1"
alias mimicrofono="pactl load-module module-loopback source=nui_mic_denoised_out.monitor sink=Mic_Limpio latency_msec=1"
alias reiniciaraudio="pulseaudio -k && sudo alsa force-reload && sleep 2 && pulseaudio -k && sudo alsa force-reload"
alias reiniciarAudio2="pulseaudio --start"

# NocheProgramacion
alias mijekyll='bundle exec jekyll serve --trace'
alias midescripcion="npm run yt-generar-descripcion-py"
alias miyoutube="npm run yt-actualizar"
alias mitag="npm run tags-generate"
alias mihtml="npm run test-html"

alias actualizarSub="mosquitto_pub -h test.mosquitto.org -t alsw/subreal -m"

# Contenido Tooltube
alias tooltubeCtrlZ="tooltube --canal ctrlz"
alias urlNotion="tooltube_get --notion"
alias urlYoutube="tooltube_get -url"

alias subirChepeCarlos="basket-cli --blender_completo"
alias subirCtrlZ="basket-cli --canal ctrlz --blender_completo"

alias asignadoChepeCarlos="tooltube_analisis --asignado chepecarlos"
alias asignadoIngJuan="tooltube_analisis --asignado ingjuan"
alias asignadoPaty="tooltube_analisis --asignado paty"
alias asignadoLuis="tooltube_analisis --asignado luis"

alias estadoIdea="tooltube_analisis --estado idea"
alias estadoDesarrollo="tooltube_analisis --estado desarrollo"
alias estadoGuion="tooltube_analisis --estado guion"
alias estadoGrabado="tooltube_analisis --estado grabado"
alias estadoEdicion="tooltube_analisis --estado edicion"
alias estadoTomaB="tooltube_analisis --estado tomab"
alias estadoRevision="tooltube_analisis --estado revision"
alias estadoPreparando="tooltube_analisis --estado preparado"
alias estadoPublicado="tooltube_analisis --estado publicado"
alias estadoAnalizando="tooltube_analisis --estado analizando"

alias actualizarEstados="tooltube_analisis --actualizar_estado"
alias actualizarEstadosCrear="tooltube_analisis --actualizar_estado --update"

alias revisarVideo="tooltube_analisis --revisar"

alias crearProyecto="basket-cli -p"
alias crearArticulo="basket-cli -a"
alias crearSubtitulos="basket-cli --blender_subtitulo"

alias actualizarIcono="basket-cli -i"

# ElGatoALSW
alias EditarElGato="code $HOME/.config/elgatoalsw"

# CNC
alias chitubox='export LD_LIBRARY_PATH=~/5.Programas/4.CNC/5.CHITUBOX_V1.8.1/lib; ~/5.Programas/4.CNC/5.CHITUBOX_V1.8.1/AppRun &'

# Raspberry Pi
alias mipi="ssh pi@raspberrypi.local"

# Git
alias add='git add'
alias addup='git add -u'
alias addall='git add .'
alias branch='git branch'
alias checkout='git checkout'
alias clone='git clone'
alias commit='git commit -m'
alias fetch='git fetch'
alias pull='git pull origin'
alias push='git push origin'
alias stat='git status'  # 'status' is protected name so using 'stat' instead
alias tag='git tag'
alias newtag='git tag -a'

# youtube-dl
alias yta-aac="youtube-dl --extract-audio --audio-format aac "
alias yta-best="youtube-dl --extract-audio --audio-format best "
alias yta-flac="youtube-dl --extract-audio --audio-format flac "
alias yta-m4a="youtube-dl --extract-audio --audio-format m4a "
alias yta-mp3="youtube-dl --extract-audio --audio-format mp3 "
alias yta-opus="youtube-dl --extract-audio --audio-format opus "
alias yta-vorbis="youtube-dl --extract-audio --audio-format vorbis "
alias yta-wav="youtube-dl --extract-audio --audio-format wav "
alias ytv-best="youtube-dl -f bestvideo+bestaudio "
alias ytt-thumbnail="youtube-dl --write-thumbnail --skip-download "
alias yt-file="youtube-dl -f bestvideo+bestaudio --download-archive archive.txt"

# Cambiando "ls" a "exa"
alias ls='exa --icons -a --group-directories-first' # Nuevo ls con opciones preferidas
alias ld='exa --icons -D --group-directories-first'  # Solo Folder
alias ll='exa --icons -l --header --group-directories-first' # Formato Largo
alias lt='exa --icons -aT --group-directories-first' # Mostar Dentro Folder
alias l.='exa --icons -a | egrep "^\."' # Solo ocultos
alias li='exa --icons -a --git-ignore --group-directories-first' # ignorar archivos de .gitignore
alias lg='exa --icons -al --header --git --group-directories-first' # Formato Largo mas Git data
alias lp='exa --icons -al --header --octal-permissions --group-directories-first' # Formato Largo mas Permisos en octal

# Arte
alias midibujo='jp2a --colors'
# Muestra JPEG con ASCII en color
# USO: midibujo archivo1, Archivo2

# Gives you a bunch of info about your machine, using uname.
function computer-info
{
    echo "kernel-name: $(uname --kernel-name)"
    echo "nodename: $(uname --nodename)"
    echo "kernel-release: $(uname --kernel-release)"
    echo "kernel-version: $(uname --kernel-version)"
    echo "machine: $(uname --machine)"
    echo "processor: $(uname --processor)"
    echo "hardware-platform: $(uname --hardware-platform)"
    echo "operating-system: $(uname --operating-system)"
}

# Agregar flatpak
# alias code='/var/lib/flatpak/app/com.visualstudio.code/x86_64/stable/active/files/extra/vscode/code'
