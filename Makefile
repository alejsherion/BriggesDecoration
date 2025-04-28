# Makefile for BriggesDecoration

# Principal Commands
start:
	npm run start

android:
	npm run android

build-apk:
	npm run build:apk

install:
	npm install

clean:
	rm -rf node_modules && npm install

# Help to list the commands
help:
	@echo "Comandos disponibles:"
	@echo "  make start        - Inicia el servidor de desarrollo Expo (modo tunnel)"
	@echo "  make android      - Compila y ejecuta en Android conectado"
	@echo "  make build-apk    - Construye un APK usando EAS"
	@echo "  make install      - Instala las dependencias npm"
	@echo "  make clean        - Elimina node_modules y reinstala"
