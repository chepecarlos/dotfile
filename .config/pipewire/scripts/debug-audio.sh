#!/usr/bin/env bash
# Script de debugging para audio virtual

echo "=== DIAGNOSTICO DE AUDIO VIRTUAL ==="
echo

echo "1. Dispositivos PipeWire disponibles:"
pw-dump | grep -A 5 '"type": "PipeWire:Interface:Node"' | grep -E 'name|description' | head -20
echo

echo "2. Verificando bocinas virtuales específicamente:"
pw-dump | jq '.[] | select(.info.props["node.name"] | contains("AT2035") or contains("Bocina"))' 2>/dev/null || pw-dump | grep -i "at2035\|bocina" | head -10
echo

echo "3. Micrófono USB disponible:"
pw-dump | jq '.[] | select(.info.props["node.name"] | contains("Focusrite"))' 2>/dev/null || pw-dump | grep -i "focusrite" | head -10
echo

echo "4. Conexiones actuales (pw-link -io):"
pw-link -io | grep -E "AT2035|Focusrite" || echo "No hay conexiones detectadas"
echo

echo "5. Estado de los módulos PulseAudio:"
pactl list modules 2>/dev/null | grep -E "AT2035|null-sink|BocinaVirtual" -A 2 || echo "pactl no disponible, intentando con pw"
echo

echo "6. Verificando si pipewire-pulse está activo:"
systemctl --user status pipewire-pulse 2>/dev/null | grep -E "active|running" || echo "Revisar con: systemctl --user status pipewire-pulse"
echo

echo "7. Intentando listar todos los nodos de audio:"
pw-cli info all | grep -E "id|name|type" | head -30
echo

echo "=== FIN DEL DIAGNOSTICO ==="
