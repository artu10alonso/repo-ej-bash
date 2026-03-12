#!/bin/bash

START_T=$(date +%s)

read -p "Introduce ruta para backup " BU_PATH

if [[ ! -d BU_PATH]]; then
    echo "La ruta no existe. Fin de script"
    exit 1
fi 

mkdir backups

DATE="$(date)

tar -czvf "$DATE"_"$BU_PATH"_backup.tar.gz backups
TAR_SIZE=$(stat --format =%s $DATE"_"$BU_PATH"_backup.tar.gz)
mv $DATE"_"$BU_PATH"_backup.tar.gz backups

echo "Se ha comprimido '$BU_PATH" en el archivo '$DATE'_'$BU_PATH_backup.tar.gz"
echo "Tiene un peso de '$TAR_SIZE'"






END_T=$(date +%s)