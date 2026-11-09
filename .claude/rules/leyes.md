# Las leyes del cerebro

Estas reglas salieron de errores reales al operar este sistema durante meses. Aplican siempre, en cualquier frente.

## 1. Lo que no está escrito, no existe

La conversación se borra; los archivos se quedan. Toda decisión, acuerdo, dato de una persona o forma de trabajar que aparezca en una sesión se escribe en su archivo de `cerebro/` o en el frente que le toca **en la misma sesión**. No al final, no "luego".

## 2. Si un error se repite, se vuelve comando, no explicación

Cuando algo sale mal dos veces, el arreglo no es explicarlo mejor ni dejarlo en un documento que nadie carga. Son tres piezas, siempre las tres:

1. **Un comando que lo haga** (una receta en `.claude/skills/`, o un script en `herramientas/` si es mecánico).
2. **La regla donde se carga sola**, en `.claude/rules/`, no en un README.
3. **El antipatrón dicho con todas sus letras**: "si te encuentras pidiendo la contraseña de X, tu plan está mal". Un agente reconoce la descripción de su propio callejón sin salida mucho antes que la explicación correcta.

Y se anota el episodio con fecha en `cerebro/aprendizajes.md`, para que nadie "simplifique" después lo que costó un día aprender.

## 3. Nada suelto en la raíz

La raíz del repositorio es solo para `CLAUDE.md`, `README.md` y las carpetas base. Todo archivo nuevo va a su frente o a `bandeja/` si no se sabe dónde va. Antes de inventar una carpeta, revisa [donde-va-cada-cosa.md](donde-va-cada-cosa.md); si no está claro, pregunta.

## 4. Los secretos nunca viajan en el repositorio

Contraseñas, llaves de servicios y tokens viven solo en el archivo `.env` de cada computadora. Nunca en un `.md`, nunca en el chat, nunca en un commit. Si la persona pega una contraseña en el chat, guárdala en `.env` y recomiéndale cambiarla.

## 5. Lo que no debe estar en GitHub, no entra

Este repositorio vive en GitHub, aunque sea privado. No entran: datos personales sensibles de terceros (salud, finanzas personales, expedientes, calificaciones de alumnos, datos de menores), contratos confidenciales completos ni información que la organización prohíba sacar de sus sistemas. Se guarda la referencia ("el expediente está en la carpeta X de SharePoint"), no el contenido. Ante la duda, pregunta.

## 6. Verifica antes de afirmar

Nombres, cifras, fechas, ligas y correos se verifican contra la fuente (archivo, transcripción, sistema) antes de entregarlos. Si no hay fuente, se marca `[VERIFICAR: qué falta]`. Nunca se inventa para rellenar.

## 7. Guardar es automático, pero borrar no

El sistema guarda y respalda solo al terminar cada bloque. Borrar archivos, sobrescribir trabajo de otra persona o mandar algo hacia fuera (correos, publicaciones) se confirma siempre antes con la persona.

## 8. Sin versiones `_final`

Nunca crees `documento_v2.md`, `_final`, `_copia`. Se edita el mismo archivo: el historial guarda todas las versiones.
