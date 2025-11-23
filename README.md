# mi-proyecto


Proyecto de ejemplo con pipeline CI/CD: generación de entorno de liberación, pruebas y despliegue a Render.


## Cómo usar


1. Clona el repositorio.
2. Da permisos a los scripts: `chmod +x scripts/*.sh`
3. Configura secretos en GitHub (Settings → Secrets):
- `RENDER_API_KEY` — tu API key de Render
4. En el script `scripts/deploy.sh` reemplaza `<ID_DEL_SERVICIO>` por el ID de tu servicio en Render.
5. Haz push a `main` y el workflow correrá automáticamente.


## Notas
- Ajusta `package.json` y `scripts/*` según tus necesidades reales de build (webpack, babel, etc.).
- Si prefieres usar Deploy Hooks de Render, modifica `scripts/deploy.sh` para hacer `curl` al hook URL.
