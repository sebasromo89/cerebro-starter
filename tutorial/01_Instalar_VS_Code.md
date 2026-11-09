# 01 · Instala VS Code y Git

Tiempo: 15 minutos. Se hace una sola vez.

## Paso 1 · Instala VS Code

1. Entra a **https://code.visualstudio.com** y aprieta el botón azul de descarga. Detecta solo si tienes Windows o Mac.
2. Abre el archivo que se descargó.
   - **Windows:** acepta todo con "Siguiente". En la pantalla de "Tareas adicionales", marca **"Agregar a PATH"** y **"Agregar la acción 'Abrir con Code'"**. Si no las ves, no pasa nada.
   - **Mac:** arrastra el ícono de VS Code a la carpeta Aplicaciones.
3. Ábrelo. Si te pregunta por un tema de colores, elige el claro: se lee mejor.

**Para ponerlo en español:** aprieta `Ctrl + Shift + P` (en Mac, `Cmd + Shift + P`), escribe `Configure Display Language`, elige **Español** y deja que se reinicie. Si no aparece, instala primero la extensión "Spanish Language Pack" (ver paso 3 de la siguiente guía para saber cómo se instalan las extensiones).

## Paso 2 · Instala Git

Git es el que guarda las versiones de tus archivos. Lo instalas y te olvidas.

- **Windows:** entra a **https://git-scm.com/downloads/win**, descarga el instalador ("Click here to download") y acepta **todas las opciones como vienen**, con "Next" hasta el final. Son muchas pantallas; ninguna hay que cambiarla.
- **Mac:** abre la aplicación **Terminal** (búscala con `Cmd + Espacio`), escribe `git --version` y aprieta Enter. Si no lo tienes, te va a ofrecer instalarlo: acepta.

## Paso 3 · Reinicia la computadora

Sí, en serio. Así VS Code encuentra a Git sin problemas.

## ¿Cómo sé que quedó?

Abre VS Code. En el menú de la izquierda hay un ícono de tres circulitos conectados con líneas (se llama "Control de código fuente"). Si al darle clic **no** dice "Instalar Git", quedó.

## Siguiente paso

[02 · Instala Claude dentro de VS Code](02_Instalar_Claude.md)
