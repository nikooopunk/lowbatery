#!/bin/bash

while true; do
    # Obtener el nivel de la baterÃ­a
    battery_level=$(acpi | grep -P -o '[0-9]+(?=%)') 
    
    # Comprobar si el nivel de la baterÃ­a es menor o igual al 20%
    if [ "$battery_level" -le 20 ]; then
        # Mostrar una notificaciÃ³n de advertencia
        notify-send "Advertencia: Nivel de batería­a bajo de ($battery_level%)" && paplay ~/Música/error-126627.mp3
    fi
    
    # Esperar 1 minuto antes de volver a comprobar
    sleep 60
done
