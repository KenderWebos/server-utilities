import os

print("Directorio actual:", os.getcwd())

directorio_deseado = "/ruta/del/directorio/deseado"
os.chdir(directorio_deseado)

print("Nuevo directorio actual:", os.getcwd())