import json

# Abre el archivo JSON y carga el contenido en un diccionario de Python
with open('data.json') as f:
    data = json.load(f)

# Obtén el nombre y la contraseña del usuario
nombre = data['nombre']
password = data['password']

# Itera para cambiar el correo electrónico
i = 0
while True:
    email = f"{nombre.lower()}{i}@pokemon.bot"
    data['email'] = email

    # Escribe los cambios en el archivo JSON
    with open('data.json', 'w') as f:
        json.dump(data, f)

    # Muestra el correo electrónico actualizado
    print(f"Correo electrónico actualizado: {email}")

    # Pregunta si el usuario quiere seguir cambiando el correo electrónico
    respuesta = input("¿Quieres seguir cambiando el correo electrónico? (s/n)")

    if respuesta.lower() == 'n':
        break

    i += 1
