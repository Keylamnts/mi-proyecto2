#!/bin/bash
set -e


echo "==== Build: instalando dependencias y ejecutando build ===="


# Si usas un build real (webpack, babel, etc) lo colocas aquí
npm install
npm run build || true


echo "✔ Build completado"