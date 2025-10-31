#!/usr/bin/env bash
set -euo pipefail

echo "iniciando Bocinas Virtuales"

nombre_maquina=$(hostname | tr '[:upper:]' '[:lower:]')

if [ "$nombre_maquina" != "ryuk" ]; then
    echo "No es la máquina ryuk, saliendo del script de bocinas virtuales."
    return 0
fi

# Nombres exactos de tus nodos (ajústalo si cambian en tu máquina)
InputUSB="alsa_input.usb-Focusrite_Scarlett_Solo_USB_Y7UUJY521E598A-00.analog-stereo"
OutputUSB="alsa_output.usb-Focusrite_Scarlett_Solo_USB_Y7UUJY521E598A-00.analog-stereo"


# Nombre de Dispositivos Virtuales
AT2035="AT2035"
BocinaAudiencia="BocinaAudiencia"
Umaru="Umaru"
Ryuk="Ryuk"
SoloOBS="SoloOBS"
SoloYo="SoloYo"
BocinaVirtual="BocinaVirtual"
ElGarrobo="ElGarrobo"
MicrofonoZoom="MicrofonoZoom"

have_port() {
    # Busca un puerto en la lista combinada de inputs+outputs
    pw-link -io | grep -Fq -- "$1"
}

buscar_puerto() {
    local port="$1"
    for i in {1..150}; do   # ~15s de espera
        if have_port "$port"; then
            echo "ok: $port"
            return 0
        fi
        sleep 0.1
    done
    echo "ERROR: no apareció el puerto $port" >&2
    exit 1
}

buscar_bocina(){
    local port="$1"
    buscar_puerto "$port:playback_FL"
    buscar_puerto "$port:playback_FR"
    buscar_puerto "$port:monitor_FL"
    buscar_puerto "$port:monitor_FR"
    
}

conectar_bocina(){
    local Emizor="$1"
    local Receptor="$2"
    pw-link "$Emizor:monitor_FL" "$Receptor:playback_FL" || true
    pw-link "$Emizor:monitor_FR" "$Receptor:playback_FR" || true
}

# Espera a que existan los puertos necesarios
buscar_puerto "$InputUSB:capture_FL"
buscar_puerto "$InputUSB:capture_FR"

buscar_bocina "$AT2035"
buscar_bocina "$BocinaAudiencia"
buscar_bocina "$Umaru"
buscar_bocina "$Ryuk"
buscar_bocina "$SoloOBS"
buscar_bocina "$SoloYo"
buscar_bocina "$BocinaVirtual"
buscar_bocina "$ElGarrobo"
buscar_bocina "$MicrofonoZoom"

buscar_puerto "$OutputUSB:playback_FL"
buscar_puerto "$OutputUSB:playback_FR"

echo "empezando a conectar"

# MicrófonoUSB --> AT2035
pw-link "$InputUSB:capture_FL" "$AT2035:playback_FL" || true
pw-link "$InputUSB:capture_FR" "$AT2035:playback_FR" || true

# Sacar a Bocina
conectar_bocina "$MicrofonoZoom" "$BocinaVirtual"
conectar_bocina "$Ryuk" "$BocinaVirtual"
conectar_bocina "$Umaru" "$BocinaVirtual"
conectar_bocina "$ElGarrobo" "$BocinaVirtual"
conectar_bocina "$SoloYo" "$BocinaVirtual"

conectar_bocina "$AT2035" "$BocinaAudiencia"
conectar_bocina "$Umaru" "$BocinaAudiencia"
conectar_bocina "$Ryuk" "$BocinaAudiencia"
conectar_bocina "$ElGarrobo" "$BocinaAudiencia"

# Bocina --> BocinaUSB
pw-link "$BocinaVirtual:monitor_FL" "$OutputUSB:playback_FL" || true
pw-link "$BocinaVirtual:monitor_FR" "$OutputUSB:playback_FR" || true

# Activando Bocina por Audio

pactl load-module module-native-protocol-tcp auth-anonymous=1 &

echo "Sistema Sonido virtual: Conectado"