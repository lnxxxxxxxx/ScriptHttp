#!/bin/bash

# Leer el archivo JSON y guardar el contenido en una variable
data=$(cat data.json)

# Obtener el nombre y la contraseña del usuario
nombre=$(echo "$data" | jq -r '.nombre')
password=$(echo "$data" | jq -r '.password')

# Iterar para cambiar el correo electrónico
for i in {1..5}; do
    email="${nombre,,}${i}@pokemon.bot"
    data=$(echo "$data" | jq --arg email "$email" '.email = $email')

    # Escribir los cambios en el archivo JSON
    echo "$data" > data.json

    # Mostrar el correo electrónico actualizado
    echo "Correo electrónico actualizado: $email"
done
