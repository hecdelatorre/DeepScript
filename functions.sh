#!/bin/bash

source auth_key.sh  # Importa el archivo auth_key.sh para tener acceso a la variable auth_key

languages=(  # Arreglo que contiene los idiomas disponibles
  'ES'
  'EN'
  'JA'
  'KO'
  'DE'
  'FR'
  'IT'
  'UK'
  'RU'
)

function translate() {
  # La función translate recibe tres argumentos:
  # text: el texto a traducir
  # source_lang: el idioma origen
  # target_lang: el idioma destino
  # auth_key: asigna la variable auth_key a la variable local auth_key
  text=$1
  source_lang=$2
  auth_key=$auth_key   target_lang=$3

  # Envía una solicitud POST a la API de Deepl con el texto, los idiomas y la auth_key como parámetros y almacena la respuesta en la variable response
  response=$(curl --silent --request POST \
    --url https://api-free.deepl.com/v2/translate \
    --header 'content-type: application/x-www-form-urlencoded' \
    --data text="$text" \
    --data source_lang="$source_lang" \
    --data target_lang="$target_lang" \
    --data auth_key="$auth_key" \
    | jq '.translations[0].text')

  echo $response  # Imprime la respuesta
}

function show_languages() {
  # La función show_languages muestra los idiomas disponibles en el arreglo languages
  for i in "${!languages[@]}"; do
    echo "$((i + 1))) ${languages[$i]}"
  done
}
