#!/usr/bin/env bash
# Script para reparar y diagnosticar problemas de audio virtual

set -euo pipefail

echo "=== REPARADOR DE AUDIO VIRTUAL ==="
echo

echo "1. Reiniciando PipeWire y PulseAudio..."
systemctl --user restart pipewire pipewire-pulse wireplumber
echo "✓ Reiniciado"
sleep 2

echo
echo "2. Verificando que las bocinas virtuales estén cargadas..."
# Esperar a que los módulos estén listos
for i in {1..30}; do
    if pactl list modules 2>/dev/null | grep -q "module-null-sink"; then
        echo "✓ Módulos de PulseAudio listos"
        break
    fi
    if [[ $i -eq 30 ]]; then
        echo "✗ Timeout esperando módulos de PulseAudio"
        exit 1
    fi
    sleep 0.5
done

echo
echo "3. Esperando que PipeWire detecte los dispositivos..."
sleep 2

echo
echo "4. Ejecutando enlaces de audio..."
~/.config/pipewire/scripts/links.sh

echo
echo "5. Verificando estado de las conexiones..."
echo ""
echo "Conexiones actuales:"
pw-link -io | grep -E "AT2035|Focusrite|BocinaVirtual" || echo "No hay conexiones detectadas"

echo
echo "=== REPARACIÓN COMPLETADA ==="
