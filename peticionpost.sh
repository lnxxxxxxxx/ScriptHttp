#!/bin/bash

# Definimos una variable con la URL de la API
url="https:///api/registro"

# Definimos una variable con la ruta al archivo que contiene los datos a enviar
data_file="data.json"

# Enviamos una petición POST con los datos del archivo y almacenamos la respuesta en una variable
response=$(curl -X POST -H "Content-Type: application/json" -d @$data_file $url)


# Imprimimos la respuesta
echo $response
