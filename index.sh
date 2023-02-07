#!/bin/bash

# Importamos el archivo functions.sh
source functions.sh

# Bucle infinito
while true; do
  # Mostramos el menú
  echo "--- Menu ---"
  echo "1) Traducir texto"
  echo "2) Salir"
  # Solicitamos la opción al usuario
  read -p "Elige una opción: " option

  # Evaluamos la opción seleccionada por el usuario
  case $option in
    1)
      # Mostramos los idiomas disponibles
      echo "--- Idiomas fuente ---"
      show_languages
      # Solicitamos el idioma fuente
      read -p "Elige idioma fuente: " source_index
      # Obtenemos el código del idioma fuente
      source_lang="${languages[$((source_index - 1))]}"

      # Mostramos los idiomas disponibles
      echo "--- Idiomas destino ---"
      show_languages
      # Solicitamos el idioma destino
      read -p "Elige idioma destino: " target_index
      # Obtenemos el código del idioma destino
      target_lang="${languages[$((target_index - 1))]}"

      # Solicitamos el texto a traducir
      read -p "Ingresa el texto a traducir: " text
      # Llamamos a la función translate para traducir el texto
      translate "$text" "$source_lang" "$target_lang"
      ;;
    2)
      # Salimos del bucle
      break
      ;;
    *)
      # En caso de opción inválida
      echo "Opción inválida"
      ;;
  esac
done
