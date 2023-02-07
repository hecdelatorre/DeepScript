# Proyecto de traducción de texto en bash

Este proyecto consiste en un script en bash que permite traducir texto a un idioma diferente al original.

## Requisitos
- curl
- jq

## Instalaciones

- Debian
```
sudo apt update && sudo apt install curl jq
```

- Fedora
```
sudo dnf update && sudo dnf install curl jq
```

- Arch
```
sudo pacman -Syu && sudo pacman -S curl jq
```

Es necesario tener instalados los paquetes curl y jq en el sistema para poder utilizar este proyecto.

## Instrucciones de uso
1. Descargue el archivo bash y el archivo functions.sh.
2. Ejecute el archivo bash en la terminal.
3. Siga las instrucciones en pantalla para elegir el idioma fuente y destino, y para ingresar el texto a traducir.

## Nota
Es importante asegurarse de que la variable de entorno API_KEY esté establecida antes de ejecutar el script, ya que se necesita para realizar las llamadas a la API de traducción.
