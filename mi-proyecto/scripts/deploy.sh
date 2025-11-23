#!/bin/bash
set -e


# Reemplaza <ID_DEL_SERVICIO> con tu serviceId en Render
SERVICE_ID="<ID_DEL_SERVICIO>"


if [ -z "$RENDER_API_KEY" ]; then
echo "ERROR: No existe la variable de entorno RENDER_API_KEY"
exit 1
fi


if [ "$SERVICE_ID" = "<ID_DEL_SERVICIO>" ]; then
echo "ERROR: Reemplaza <ID_DEL_SERVICIO> en scripts/deploy.sh con el ID de tu servicio Render"
exit 1
fi


echo " Iniciando despliegue en Render (service: $SERVICE_ID) "


RESPONSE=$(curl -s -X POST \
-H "Authorization: Bearer $RENDER_API_KEY" \
-H "Content-Type: application/json" \
-d '{"clearCache":false}' \
https://api.render.com/v1/services/$SERVICE_ID/deploys)


echo "Respuesta Render: $RESPONSE"


echo "Deploy solicitado a Render"