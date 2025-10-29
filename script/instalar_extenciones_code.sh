#!/bin/bash

# Este script configura las extensiones esenciales de VS Code.

echo "Iniciando configuración de extensiones de Visual Studio Code..."

echo "Instalando extensiones principales de Diferentes Lenguajes..."
code --install-extension ms-python.python 
code --install-extension ms-python.vscode-pylance
code --install-extension be5invis.toml
code --install-extension jacqueslucke.blender-development
code --install-extension ms-python.black-formatter # Formateador de codigo
code --install-extension ms-python.flake8 # Un linter popular

echo "Instalando extensiones generales..."
code --install-extension esbenp.prettier-vscode # Codigo ordenador
code --install-extension christian-kohler.path-intellisense  # Autocompletado de rutas de archivos
code --install-extension fvclaus.sort-json-array # Ordejar json
code --install-extension aaron-bond.better-comments # Mejores Comentarios
code --install-extension adpyke.codesnap # Capturas de Codigo
code --install-extension gruntfuggly.todo-tree # Arbol de cosas por hacer

echo "Soporte de lenguajes"
code --install-extension bodil.prettier-toml
code --install-extension daelonsuzuka.nicegui

echo ¨"Instalando extensiones de Soporte de Idiomas..."
code --install-extension streetsidesoftware.code-spell-checker
code --install-extension streetsidesoftware.code-spell-checker-spanish


echo "Configuración de extensiones completada. 🎉"
echo "Recuerda reiniciar VS Code para que todos los cambios surtan efecto."


# 
# kevinrose.vsc-python-indent
# littlefoxteam.vscode-python-test-adapter
# mechatroner.rainbow-csv
# ml.nc-gcode
# ms-azuretools.vscode-containers
# ms-ceintl.vscode-language-pack-es
# ms-python.autopep8
# ms-python.black-formatter
# ms-python.debugpy
# ms-python.isort
# ms-python.python
# ms-python.vscode-pylance
# ms-python.vscode-python-envs
# ms-toolsai.jupyter
# ms-toolsai.jupyter-keymap
# ms-toolsai.jupyter-renderers
# ms-toolsai.vscode-jupyter-cell-tags
# ms-toolsai.vscode-jupyter-slideshow
# ms-vscode.cpptools
# ms-vscode.makefile-tools
# ms-vscode.test-adapter-converter
# ms-vsliveshare.vsliveshare
# mtsmfm.vscode-stl-viewer
# naumovs.color-highlight
# njpwerner.autodocstring
# oderwat.indent-rainbow
# pepri.subtitles-editor
# rangav.vscode-thunder-client
# ritwickdey.liveserver
# shakram02.bash-beautify
# shd101wyy.markdown-preview-enhanced

# tomoki1207.pdf
# vstirbu.vscode-mermaid-preview
# yzhang.markdown-all-in-one
