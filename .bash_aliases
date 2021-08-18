# .bash_aliase
# Autor: ChepeCarlos <ChepeCarlos@alsw.net>
# Codigo: https://github.com/chepecarlos/dotfile

# Generales
alias ..='cd ..'
alias ...='cd ../..'
alias df='df -h'
alias resetshell='exec $SHELL'

# Red
alias p='ping 8.8.8.8'
alias miip='hostname -I'
alias miippublica='curl ifconfig.me'

# Android
alias miandroid="scrcpy"

# NocheProgramacion
alias mijekyll='bundle exec jekyll serve'
alias midescripcion="npm run yt-descriptions"
alias mitag="npm run tags-generate"
alias mihtml="npm run test-html"

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

# Cambiando "ls" a "exa"
alias ls='exa -a --group-directories-first' # Nuevo ls con opciones preferidas
alias ld='exa -D --group-directories-first'  # Solo Folder
alias ll='exa -l --header --group-directories-first' # Formato Largo
alias lt='exa -aT --group-directories-first' # Mostar Dentro Folder
alias l.='exa -a | egrep "^\."' # Solo ocultos
alias li='exa -a --git-ignore --group-directories-first' # ignorar archivos de .gitignore
alias lg='exa -al --header --git --group-directories-first' # Formato Largo mas Git data
alias lp='exa -al --header --octal-permissions --group-directories-first' # Formato Largo mas Permisos en octal

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