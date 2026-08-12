#!/bin/bash
# Nombre: Samuel Cobo
# Breve explicación de la funcionalidad del programa: Muestra el día de la semana según un número (1-7) usando case.

read -p "Ingresa un número (1-7): " n

case "$n" in
  1) echo "Lunes" ;;
  2) echo "Martes" ;;
  3) echo "Miércoles" ;;
  4) echo "Jueves" ;;
  5) echo "Viernes" ;;
  6) echo "Sábado" ;;
  7) echo "Domingo" ;;
  *) echo "Número inválido. Debe ser del 1 al 7." ;;
esac
