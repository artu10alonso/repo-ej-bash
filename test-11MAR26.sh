#!/bin/bash
export PATH="$PATH:/bin:/usr/bin"

START_T=$(date +%s)

read -p "Introduce ruta para backup " BU_FOLDER
MY_PATH="$(pwd)/$BU_FOLDER"
echo "$PATH"

if [[ ! -d $MY_PATH ]]; then
    echo "La ruta no existe. Fin de script"
    exit 1
fi 

mkdir -p backups

DATE="$(date)"

tar -czvf "$DATE"_"$BU_FOLDER"_backup.tar.gz backups
TAR_SIZE=$(stat --format =%s $DATE"_"$BU_FOLDER"_backup.tar.gz)
mv $DATE"_"$BU_FOLDER"_backup.tar.gz backups

echo "Se ha comprimido '$BU_PATH" en el archivo '$DATE'_'$BU_FOLDER_backup.tar.gz"
echo "Tiene un peso de '$TAR_SIZE'"






END_T=$(date +%s)