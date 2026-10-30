# ALARMEC — Landing Page oficial

Sitio web oficial de **ALARMEC Seguridad Electrónica** (Quito y Valles): portones automáticos, cámaras de seguridad, cercos eléctricos y mantenimiento preventivo.

- Sitio estático: `index.html` con el CSS de Tailwind compilado e incrustado (sin dependencias externas).
- Recursos en `assets/`.
- Publicación: GitHub Pages (rama `main`, carpeta raíz) o Cloudflare Pages.

Contacto: WhatsApp 098 700 3533 · alarmec.lc@gmail.com

## Recompilar el CSS

Tras cambiar clases en `index.html`, descarga el [CLI standalone de Tailwind v3.4](https://github.com/tailwindlabs/tailwindcss/releases/tag/v3.4.17) (`tailwindcss-windows-x64.exe`, renómbralo a `tailwindcss.exe` en esta carpeta) y ejecuta:

```powershell
.\build.ps1
```

El script compila `src/input.css` con `tailwind.config.js` y reemplaza el CSS entre `/*tw:start*/` y `/*tw:end*/` en `index.html`.
