#!/bin/bash
# Nombre: Samuel Cobo
# Breve explicación de la funcionalidad del programa: Calcula el área de un rectángulo (base * altura).

read -p "Ingresa la base: " base
read -p "Ingresa la altura: " altura

area=$((base * altura))

echo "El área del rectángulo es: $area"
