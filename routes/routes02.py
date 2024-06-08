import os

# Define las rutas predefinidas con sus nombres
rutas_predefinidas = {
    "aquí": os.getcwd(),
    "HeriTech": "/ruta/del/directorio/HeriTech",
    "Sockets": "/ruta/del/directorio/Sockets"
}

def mostrar_menu():
    print("Seleccione una opción:")
    for idx, (nombre, _) in enumerate(rutas_predefinidas.items(), 1):
        print(f"{idx}) {nombre}")
    print(f"{len(rutas_predefinidas) + 1}) Salir")

def cambiar_directorio(opcion):
    if opcion == len(rutas_predefinidas) + 1:
        return False
    elif opcion < 1 or opcion > len(rutas_predefinidas) + 1:
        print("Opción no válida")
        return True
    
    _, ruta = list(rutas_predefinidas.items())[opcion - 1]
    os.chdir(ruta)
    print("Nuevo directorio actual:", os.getcwd())
    return True

def main():
    while True:
        mostrar_menu()
        opcion = input("Ingrese el número de opción: ")

        try:
            opcion = int(opcion)
            if not cambiar_directorio(opcion):
                break
        except ValueError:
            print("Por favor, ingrese un número válido.")

if __name__ == "__main__":
    main()
