#!/bin/bash

url="https:/api/registro"
data_file="data.json"
data=$(cat $data_file)

for i in {1..5}; do
    nombre="Usuario$i"
    email="${nombre,,}@pokemon.bot"
    data=$(echo "$data" | jq --arg nombre "$nombre" '.nombre = $nombre')
    data=$(echo "$data" | jq --arg email "$email" '.email = $email')
    echo "$data" > $data_file
    echo "Datos actualizados: $nombre, $email"
    response=$(curl -X POST -H "Content-Type: application/json" -d @$data_file $url)
    echo $response
done
