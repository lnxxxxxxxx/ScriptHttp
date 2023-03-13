#!/bin/bash


url="https:///api/registro"


data_file="data.json"


data=$(cat $data_file)


nombre=$(echo "$data" | jq -r '.nombre')
password=$(echo "$data" | jq -r '.password')


for i in {1..1000}; do
    email="${nombre,,}${i}@pokemon.bot"
    data=$(echo "$data" | jq --arg email "$email" '.email = $email')

    
    echo "$data" > $data_file

    
    echo "Correo electrónico actualizado: $email"

    
    response=$(curl -X POST -H "Content-Type: application/json" -d @$data_file $url)

    
    echo $response
done
