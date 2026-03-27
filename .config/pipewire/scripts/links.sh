#!/usr/bin/env bash
set -euo pipefail

echo "iniciando Bocinas Virtuales"

nombre_maquina=$(hostname | tr '[:upper:]' '[:lower:]')

if [ "$nombre_maquina" != "ryuk" ]; then
    echo "No es la máquina ryuk, saliendo del script de bocinas virtuales."
    exit 0
fi

# Nombres exactos de tus nodos (ajústalo si cambian en tu máquina)
InputUSB="alsa_input.usb-Focusrite_Scarlett_Solo_USB_Y7UUJY521E598A-00.analog-stereo"
OutputUSB="alsa_output.usb-Focusrite_Scarlett_Solo_USB_Y7UUJY521E598A-00.analog-stereo"


# Nombre de Dispositivos Virtuales
AT2035="AT2035"
BocinaAudiencia="BocinaAudiencia"
SoloOBS="SoloOBS"
SoloYo="SoloYo"
BocinaVirtual="BocinaVirtual"
MicrofonoZoom="MicrofonoZoom"

ElGarrobo="ElGarrobo"
Ryuk="Ryuk"
Umaru="Umaru"

declare -a BocinasVirtuales=("$AT2035" "$BocinaAudiencia" "$SoloOBS" "$SoloYo" "$BocinaVirtual" "$MicrofonoZoom" "$ElGarrobo" "$Ryuk" "$Umaru")

# Cache de puertos disponibles (para evitar ejecutar pw-link -io múltiples veces)
PUERTO_CACHE=""

actualizar_cache_puertos() {
    PUERTO_CACHE=$(pw-link -io)
}

tiene_puerto() {
    echo "$PUERTO_CACHE" | grep -Fxq "$1" && return 0 || return 1
}

desconectar_puerto() {
    # Intenta desconectar un puerto si está conectado
    [[ -z "${1:-}" ]] || [[ -z "${2:-}" ]] && return 1
    
    local source="$1"
    local dest="$2"
    
    # Intentar desconexión con timeout
    timeout 1 pw-link -d "$source" "$dest" 2>/dev/null || true
}

buscar_puerto() {
    [[ -z "$1" ]] && { echo "ERROR: puerto vacío" >&2; return 1; }
    
    local puerto="$1"
    for i in {1..150}; do   # ~15s de espera
        actualizar_cache_puertos
        if tiene_puerto "$puerto"; then
            echo "Encontrado: $puerto"
            return 0
        fi
        sleep 0.1
    done
    echo "ERROR: no apareció el puerto $puerto" >&2
    exit 1
}

buscar_bocina(){
    [[ -z "$1" ]] && { echo "ERROR: dispositivo vacío" >&2; return 1; }
    
    local port="$1"
    buscar_puerto "$port:playback_FL"
    buscar_puerto "$port:playback_FR"
    buscar_puerto "$port:monitor_FL"
    buscar_puerto "$port:monitor_FR"
}

conectar_bocina(){
    [[ -z "${1:-}" ]] && { echo "ERROR: Emisor vacío" >&2; return 1; }
    [[ -z "${2:-}" ]] && { echo "ERROR: Receptor vacío" >&2; return 1; }
    
    local Emisor="$1"
    local Receptor="$2"
    local puerto_src puerto_dest
    
    # Detectar tipo de puerto del Emisor (usando cache)
    if echo "$PUERTO_CACHE" | grep -q "^$Emisor:capture_" ; then
        puerto_src="capture"
    else
        puerto_src="monitor"
    fi
    
    # Detectar tipo de puerto del Receptor (usando cache)
    if echo "$PUERTO_CACHE" | grep -q "^$Receptor:capture_" ; then
        puerto_dest="capture"
    else
        puerto_dest="playback"
    fi
    
    echo "  → Conectando $Emisor ($puerto_src) a $Receptor ($puerto_dest)"
    
    # Conectar canales L y R
    local conectado=0
    for lado in FL FR; do
        echo "    Conectando ${puerto_src}_${lado} → ${puerto_dest}_${lado}..."
        # Primero intentar desconectar si existe
        desconectar_puerto "$Emisor:${puerto_src}_${lado}" "$Receptor:${puerto_dest}_${lado}"
        
        # Luego conectar
        if timeout 2 pw-link "$Emisor:${puerto_src}_${lado}" "$Receptor:${puerto_dest}_${lado}" 2>&1; then
            echo "    ✓ ${lado} conectado"
            ((++conectado))
        else
            echo "    ✗ Error en ${lado}"
        fi
    done
    
    if [[ $conectado -ge 1 ]]; then
        echo "$Emisor ➜ $Receptor: Conectadas ✓"
        return 0
    else
        echo "⚠️  Error conectando $Emisor a $Receptor"
        return 1
    fi
}

# Espera a que existan los puertos necesarios
echo -e "\tBuscando puertos de micrófono USB"
actualizar_cache_puertos
buscar_puerto "$InputUSB:capture_FL"
buscar_puerto "$InputUSB:capture_FR"

echo -e "\tConectar a Bocinas Virtuales"
for dispositivo in "${BocinasVirtuales[@]}"; do
    buscar_bocina "$dispositivo"
done

echo -e "\tBuscando puertos de salida USB"
buscar_puerto "$OutputUSB:playback_FL"
buscar_puerto "$OutputUSB:playback_FR"

echo -e "\tConectando Microfono a Bocina virtual"
actualizar_cache_puertos
conectar_bocina "$InputUSB" "$AT2035"

# Sacar a Bocina
echo -e "\tEmpezando a conectar con $BocinaVirtual"
actualizar_cache_puertos
conectar_bocina "$MicrofonoZoom" "$BocinaVirtual"
conectar_bocina "$SoloYo" "$BocinaVirtual"
conectar_bocina "$Umaru" "$BocinaVirtual"
conectar_bocina "$Ryuk" "$BocinaVirtual"
conectar_bocina "$ElGarrobo" "$BocinaVirtual"

actualizar_cache_puertos
conectar_bocina "$AT2035" "$BocinaAudiencia"
conectar_bocina "$Umaru" "$BocinaAudiencia"
conectar_bocina "$Ryuk" "$BocinaAudiencia"
conectar_bocina "$ElGarrobo" "$BocinaAudiencia"

echo -e "\tConectando Bocina Virtual a Salida USB"
actualizar_cache_puertos
conectar_bocina "$BocinaVirtual" "$OutputUSB"

# Activando Bocina por Audio
pactl load-module module-native-protocol-tcp auth-anonymous=1 &

echo "Sistema Sonido virtual: Conectado"