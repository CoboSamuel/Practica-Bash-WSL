#!/bin/bash
# Nombre: Samuel Cobo
# Breve explicación de la funcionalidad del programa: Permite elegir una operación (sumar/restar) usando select y calcula el resultado.


read -p "Ingresa el primer número: " a
read -p "Ingresa el segundo número: " b

select op in Sumar Restar Salir; do
  case "$op" in
    Sumar)
      echo "Resultado: $((a + b))"
      break
      ;;
    Restar)
      echo "Resultado: $((a - b))"
      break
      ;;
    Salir)
      echo "Saliendo..."
      break
      ;;
    *)
      echo "Opción inválida"
      ;;
  esac
done
