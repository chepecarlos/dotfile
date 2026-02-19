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
    local puerto="$1"
    for i in {1..150}; do   # ~15s de espera
        if have_port "$puerto"; then
            echo "Encontrado: $puerto"
            return 0
        fi
        sleep 0.1
    done
    echo "ERROR: no apareció el puerto $puerto" >&2
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
    if pw-link -l "$Emizor" | grep -i "$Receptor" | grep -q "|->"; then
        echo "$Emizor y $Receptor: Conectadas"
    else
        echo "Conectando $Emizor a $Receptor"
        pw-link "$Emizor:monitor_FL" "$Receptor:playback_FL" || true
        pw-link "$Emizor:monitor_FR" "$Receptor:playback_FR" || true
    fi
}

# Espera a que existan los puertos necesarios
echo -e "\tBuscando puertos de micrófono USB"
buscar_puerto "$InputUSB:capture_FL"
buscar_puerto "$InputUSB:capture_FR"

echo -e "\tConectar a Bocinas Virtuales"
buscar_bocina "$AT2035"
buscar_bocina "$BocinaAudiencia"
buscar_bocina "$Umaru"
buscar_bocina "$Ryuk"
buscar_bocina "$SoloOBS"
buscar_bocina "$SoloYo"
buscar_bocina "$BocinaVirtual"
buscar_bocina "$ElGarrobo"
buscar_bocina "$MicrofonoZoom"

echo -e "\tBuscando puertos de salida USB"
buscar_puerto "$OutputUSB:playback_FL"
buscar_puerto "$OutputUSB:playback_FR"

echo -e "\tConectando Microfono a Bocina virtual"
conectar_bocina "$InputUSB" "$AT2035"

# Sacar a Bocina
echo -e "\tEmpezando a conectar con $BocinaVirtual"
conectar_bocina "$MicrofonoZoom" "$BocinaVirtual"
conectar_bocina "$Ryuk" "$BocinaVirtual"
conectar_bocina "$Umaru" "$BocinaVirtual"
conectar_bocina "$ElGarrobo" "$BocinaVirtual"
conectar_bocina "$SoloYo" "$BocinaVirtual"

conectar_bocina "$AT2035" "$BocinaAudiencia"
conectar_bocina "$Umaru" "$BocinaAudiencia"
conectar_bocina "$Ryuk" "$BocinaAudiencia"
conectar_bocina "$ElGarrobo" "$BocinaAudiencia"

echo -e "\tConectando Bocina Virtual a Salida USB"
conectar_bocina "$BocinaVirtual" "$OutputUSB"

# Activando Bocina por Audio

pactl load-module module-native-protocol-tcp auth-anonymous=1 &

echo "Sistema Sonido virtual: Conectado"