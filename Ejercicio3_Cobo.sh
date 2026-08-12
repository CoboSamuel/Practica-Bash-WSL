#!/bin/bash
# Nombre: Samuel Cobo
# Breve explicación de la funcionalidad del programa: Saluda al usuario usando el parámetro $1 (nombre).

if [ -z "$1" ]; then
  echo "Uso: $0 <nombre>"
  exit 1
fi

nombre="$1"
echo "Hola, $nombre. Bienvenido"
