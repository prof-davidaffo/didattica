#!/bin/bash

# Percorso assoluto della cartella sorgente con le note originali
SOURCE="/home/davidaffo/Documents/Obsidian Vault/Scuola/Didattica/Argomenti"

# Percorso relativo alla cartella Quartz (lo script va eseguito dalla root del progetto)
DEST="content/Argomenti"

# Crea la cartella di destinazione se non esiste
mkdir -p "$DEST"

# Copia solo i file nuovi o modificati
rsync -av --update --exclude=".DS_Store" --exclude="*.tmp" "$SOURCE/" "$DEST/"

