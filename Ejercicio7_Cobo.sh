#!/bin/bash
# Nombre: Samuel Cobo
# Breve explicación de la funcionalidad del programa: Convierte una cantidad de dólares a centavos (1 dólar = 100 centavos).

read -p "Ingresa dólares (solo entero): " dolares

centavos=$((dolares * 100))

echo "$dolares dólares son $centavos centavos."
