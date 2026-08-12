#!/bin/bash
# Desarrollador: Jeremy Tomaselly
# Funcionalidad: Juego para adivinar un número del 1 al 10 en 3 intentos.
# Al terminar, pregunta si desea continuar (S/N).

while true; do
  # Número aleatorio del 1 al 10
  secreto=$((RANDOM % 10 + 1))

  echo "=== ADIVINE EL NÚMERO (1 al 10) ==="
  echo "Tienes 3 oportunidades."

  intentos=3
  adivino=0

  while [ $intentos -gt 0 ]; do
    read -p "Ingresa tu número (1-10): " num

    # Validación simple: debe ser número del 1 al 10
    if ! [[ "$num" =~ ^[0-9]+$ ]] || [ "$num" -lt 1 ] || [ "$num" -gt 10 ]; then
      echo "Entrada inválida. Debe ser un número del 1 al 10."
      continue
    fi

    if [ "$num" -eq "$secreto" ]; then
      echo "¡Correcto! Adivinaste el número."
      adivino=1
      break
    else
      intentos=$((intentos - 1))
      if [ $intentos -gt 0 ]; then
        echo "Incorrecto. Te quedan $intentos intento(s)."
      fi
    fi
  done

  if [ $adivino -eq 0 ]; then
    echo "Se acabaron los intentos. El número era: $secreto"
  fi

  read -p "¿Desea continuar? (S/N): " resp
  case "$resp" in
    S|s) echo "Reiniciando juego..." ;;
    N|n) echo "Saliendo del juego..."; break ;;
    *) echo "Respuesta inválida. Se cerrará el juego."; break ;;
  esac

  echo
done
