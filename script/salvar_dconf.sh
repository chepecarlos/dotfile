#!/bin/sh

# Salvar Configuraccion de guake
dconf dump /apps/guake/ >config-dconf/config-guake.dconf

# https://unix.stackexchange.com/questions/474137/where-does-guake-put-it-user-preferences
# Como salvar
# dconf dump /apps/guake/ > Downloads/guake.dconf

# Como cargar
# dconf load /apps/guake/ < Downloads/guake.dconf
