#!/bin/sh
# Instala Real-ESRGAN (ncnn-vulkan) para el comando mejorar-imagen
set -e

VERSION=v0.2.5.0
ZIP=realesrgan-ncnn-vulkan-20220424-ubuntu.zip
DESTINO="$HOME/.local/share/realesrgan"

sudo apt install -y imagemagick curl unzip

if [ -x "$DESTINO/realesrgan-ncnn-vulkan" ]; then
  echo "Real-ESRGAN ya instalado en $DESTINO"
  exit 0
fi

TMP=$(mktemp -d)
curl -fL -o "$TMP/$ZIP" "https://github.com/xinntao/Real-ESRGAN/releases/download/$VERSION/$ZIP"
unzip -q "$TMP/$ZIP" -d "$TMP/r"
mkdir -p "$DESTINO"
cp -r "$TMP/r/realesrgan-ncnn-vulkan" "$TMP/r/models" "$DESTINO/"
chmod +x "$DESTINO/realesrgan-ncnn-vulkan"
rm -rf "$TMP"
echo "Real-ESRGAN instalado en $DESTINO"
