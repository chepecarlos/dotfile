

configurar: permisos-flatpak
	@echo "Configurando dotfiles..."
	stow .
	@echo "Dotfiles configurados."

# ponytail: acceso de solo lectura y por ruta, no --filesystem=home;
# agregar una linea por app que lea config via symlink bajo .var/app
permisos-flatpak:
	@echo "Configurando permisos de flatpak para leer symlinks de stow..."
	flatpak override --user --filesystem=$(CURDIR):ro net.christianbeier.Gromit-MPX

# Recupera archivos que una app reemplazo por uno normal (ej: HueForge),
# solo en esta compu: en una nueva copiaria al repo las configs por defecto
adoptar:
	stow --adopt .
	git diff --stat

# Real-ESRGAN para el comando mejorar-imagen
realesrgan:
	sh script/instalar_realesrgan.sh


