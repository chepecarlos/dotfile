
# Generales
alias p='ping 8.8.8.8'

# NocheProgramacion
alias mijekyll='bundle exec jekyll serve'
alias midescripcion="npm run yt-descriptions"
alias mitag="npm run tags-generate"
alias mihtml="npm run test-html"

# Raspberry Pi
alias mipi="ssh pi@raspberrypi.local"

# Git
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

# Cambiando "ls" a "exa"
alias ls='exa -a --group-directories-first' # Nuevo ls con opciones preferidas
alias ld='exa -D --group-directories-first'  # Solo Folder
alias ll='exa -l --header --group-directories-first' # Formato Largo
alias lt='exa -aT --group-directories-first' # Mostar Foldertree listing
alias l.='exa -a | egrep "^\."' # Solo ocultos
alias li='exa -a --git-ignore --group-directories-first' # Innora archivos de .gitignore
alias lg='exa -al --git --group-directories-first' # Formato Largo mas Git data
alias lp='exa -al --octal-permissions --group-directories-first' # Formato Largo mas Permisos en octal