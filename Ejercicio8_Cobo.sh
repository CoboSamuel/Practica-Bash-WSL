#!/bin/bash
# Nombre: Samuel Cobo
# Breve explicación de la funcionalidad del programa: Suma números ingresados por el usuario hasta que ingrese 0.

suma=0
num=1

while [ $num -ne 0 ]; do
  read -p "Ingresa un número (0 para terminar): " num
  suma=$((suma + num))
done

echo "La suma total es: $suma"
