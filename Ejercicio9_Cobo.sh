#!/bin/bash
# Nombre: Samuel Cobo
# Breve explicación de la funcionalidad del programa: Muestra la tabla de multiplicar de un número usando for.

read -p "Ingresa un número: " n

for i in {1..10}; do
  echo "$n x $i = $((n * i))"
done
