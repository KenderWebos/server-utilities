#!/bin/bash

# Función para mostrar el menú
mostrar_menu() {
  echo "Menú principal"
  echo "1. ir a repositorios GitHub"
  echo "2. none"
  echo "3. none"
  echo "4. Salir"
}

# Función para obtener la entrada del usuario
obtener_entrada() {
  read -p "Ingrese una opción: " opcion
}

# Función para ejecutar la acción correspondiente
ejecutar_accion() {
  case $opcion in
    1) cd programing/github;;
    2) echo "Ejecutando none";;
    3) echo "Ejecutando none";;
    4) exit 0;;
    *) echo "Opción inválida";;
  esac
}

# Mostrar el menú
mostrar_menu

# Obtener la entrada del usuario
obtener_entrada

# Ejecutar la acción correspondiente
ejecutar_accion
