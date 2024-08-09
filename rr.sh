#!/bin/bash

# Pfad zum Projektverzeichnis
PROJECT_DIR=$(pwd)

# Ersetzen aller Vorkommen von "github.com/nauen/lollms-webui" durch "github.com/nauen/lollms7"
echo "Ersetze alle Vorkommen von 'github.com/nauen/lollms-webui' durch 'github.com/nauen/lollms7'..."

grep -rl "github.com/nauen/lollms-webui" $PROJECT_DIR | while read -r file ; do
    sed -i 's|github.com/nauen/lollms-webui|github.com/nauen/lollms-webui|g' "$file"
    echo "Bearbeitet: $file"
done

# Git-Befehle, um die Änderungen zu committen und zu pushen
echo "Änderungen committen und pushen..."

git add .
git commit -m "Ersetzte github.com/nauen/lollms-webui durch github.com/nauen/lollms-webui"
git push origin $(git branch --show-current)

echo "Änderungen erfolgreich gepusht!"

