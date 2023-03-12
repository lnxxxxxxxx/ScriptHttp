#!/bin/bash

# Definimos una variable con la URL que queremos acceder
url="https://"

# Definimos una variable con la ruta al archivo donde queremos almacenar la respuesta de la petición
output_file="./output.txt"

# Enviamos una petición HTTP GET a la URL definida anteriormente y almacenamos la respuesta en el archivo de salida
curl $url -o $output_file
