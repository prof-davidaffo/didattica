#!/bin/bash

# Percorso assoluto della cartella sorgente con le note originali
SOURCE="/home/davidaffo/Documents/Obsidian Vault/Scuola/Didattica/Argomenti"

# Cartella di destinazione relativa alla root del progetto Quartz
DEST="content/Argomenti"

# Pattern da escludere (verifiche, soluzioni, correzioni)
EXCLUDE_PATTERN="*[Vv]erific*|*[Ss]oluz*|*[Cc]orrezion*|*[Cc]orrett*"

# Crea la cartella di destinazione se non esiste
mkdir -p "$DEST"

echo ">> Rimozione dei file già presenti in '$DEST' che corrispondono al pattern..."
find "$DEST" -type f \( \
  -iname "*verific*" -o \
  -iname "*soluz*" -o \
  -iname "*correzion*" -o \
  -iname "*corrett*" \
\) -exec rm -v {} +

echo ">> Sincronizzazione dei file da '$SOURCE' a '$DEST' (escludendo file sensibili)..."
rsync -av --update --delete \
  --exclude='*verific*' \
  --exclude='*Verific*' \
  --exclude='*soluz*' \
  --exclude='*Soluz*' \
  --exclude='*correzion*' \
  --exclude='*Correzion*' \
  --exclude='*corrett*' \
  --exclude='*Corrett*' \
  "$SOURCE/" "$DEST/"

echo "✅ Sincronizzazione completata."

