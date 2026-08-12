#!/bin/bash
# Nombre: Samuel Cobo
# Breve explicación de la funcionalidad del programa: Muestra el último parámetro ingresado.

if [ $# -eq 0 ]; then
  echo "Uso: $0 <param1> <param2> ..."
  exit 1
fi

echo "El último parámetro es: ${!#}"
