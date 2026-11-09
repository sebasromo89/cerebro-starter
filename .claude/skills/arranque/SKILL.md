---
name: arranque
description: Entrevista inicial que arma el cerebro de una persona (o de un equipo) desde cero. Pregunta quién es, sus frentes, su gente, sus sistemas, su ritmo y sus reglas, y con eso llena CLAUDE.md, cerebro/ y crea las carpetas de cada frente. Úsalo cuando CLAUDE.md tenga la marca "ARRANQUE: PENDIENTE", o cuando digan "arranque", "configura mi cerebro", "empecemos", "hazme el onboarding" o "quiero rehacer mi configuración".
---

# Arranque del cerebro

Vas a entrevistar a una persona que probablemente nunca ha programado y que hoy abre esto por primera vez. Al terminar debe sentir que su asistente ya la conoce. La entrevista dura de 30 a 45 minutos, se puede pausar y retomar.

## Cómo conducir la entrevista

- **Un bloque a la vez, máximo 3 o 4 preguntas por mensaje.** Nunca un cuestionario de 20 preguntas.
- **Cada pregunta con un ejemplo** de respuesta, para que no se quede en blanco. Usa ejemplos de oficinas, universidades, clínicas o despachos, no de software.
- **Acepta respuestas desordenadas o dictadas por voz.** Tú ordenas; ella no tiene que escribir bonito. Dile desde el inicio que puede contestar como hable.
- **Devuelve lo que entendiste en una tabla corta** al final de cada bloque y pide un "sí" o correcciones antes de pasar al siguiente.
- **Cero jerga.** Nada de "repositorio", "commit", "markdown" o "frontmatter". Si hace falta, explícalo en la misma oración ("tu carpeta del cerebro").
- **Guarda el avance al cerrar cada bloque** en `cerebro/_arranque_progreso.md` (qué bloques están hechos y sus respuestas). Si la sesión se corta, al volver lees ese archivo y sigues donde se quedó.

## Paso 0 · ¿Se retoma o se empieza?

0. **Revisa a dónde se respalda la carpeta** con `git remote get-url origin`. Si apunta a `sebasromo89/cerebro-starter`, la persona bajó la plantilla en lugar de su copia: lo que escriba se respaldaría en la plantilla, que no es suya. No es grave; explícaselo en una línea ("tu carpeta todavía está conectada a la plantilla original; la conecto a tu propia copia privada") y arréglalo antes de la entrevista:
   - Con `gh` instalado y con sesión (`gh auth status`): `git remote rename origin plantilla` y luego `gh repo create <su-usuario>/mi-cerebro --private --source . --remote origin --push`.
   - Sin `gh`: que cree en https://github.com/new un repositorio **vacío** y **privado** llamado `mi-cerebro` (sin README ni nada marcado), que te pase la liga, y tú corres `git remote rename origin plantilla`, `git remote add origin <liga>` y `git push -u origin main`.
   - Si se atora, sigue con la entrevista: el guardado queda en su computadora (el cierre automático no sube nada mientras apunte a la plantilla) y lo conectas después.
1. Si existe `cerebro/_arranque_progreso.md`, léelo, resume en una línea lo que ya está y sigue con el bloque pendiente.
2. Si `CLAUDE.md` ya no tiene la marca `ARRANQUE: PENDIENTE`, el cerebro ya está armado: pregunta si quiere rehacerlo completo o solo ajustar una parte (en ese caso ve directo al bloque que toque).
3. Si es nuevo, da la bienvenida en máximo 5 líneas: qué va a pasar, cuánto dura, que se puede pausar y que al final su asistente ya va a saber quién es, en qué trabaja y con quién.

## Paso 1 · ¿Personal o de equipo?

Pregunta: "¿Este cerebro es solo tuyo, o lo va a compartir un equipo?". Si es de equipo, sigue la entrevista pero con dos cambios: los frentes son los proyectos o líneas del equipo, y en el bloque C pides la lista del equipo con su rol. Al final crea además `ESTADO_EQUIPO.md` (ver `/sumar-equipo`).

## Bloque A · Quién eres (5 min)

- Nombre, cómo te gusta que te digan, rol y organización, correo de trabajo.
- "En una frase, ¿de qué te encargas?"
- "¿Cómo prefieres que te hable? ¿De tú o de usted? ¿Respuestas cortas o con explicación? ¿Quieres ver el plan antes de que construya algo grande?"
- "¿Qué te desespera de trabajar con otras personas o con herramientas?" (esto se vuelve regla).

Llena `cerebro/perfil.md`.

## Bloque B · Tus frentes (10 min)

Explica: "Un frente es un área de tu trabajo con su propia gente, sus entregables y su ritmo. Por ejemplo: 'Clientes clave', 'Compras', 'Mi equipo', 'Reportes a dirección'". La mayoría de las personas tiene entre 3 y 7. Si da más de 8, ayúdale a agrupar; si da 1, ayúdale a separar.

Por cada frente: nombre corto, objetivo en una frase, con quién trabaja ahí, qué entrega de forma recurrente (reporte semanal, minuta, propuesta) y qué herramientas usa.

Devuelve la tabla y pide confirmación. Numera los frentes por importancia (`01_`, `02_`...).

## Bloque C · Tu gente y tus nombres (5 min)

- "¿Quiénes son las 5 a 15 personas con las que más trabajas? Nombre, qué hacen y en qué frente aparecen."
- "¿Hay nombres que la gente escribe mal y te molesta? ¿Siglas internas que debo conocer?" (ejemplo: "es Yazmín con Y, no Jazmín").

Llena `cerebro/personas.md`.

## Bloque D · Tus sistemas (5 min)

- "¿Tu correo y calendario son de Microsoft (Outlook, Teams) o de Google (Gmail, Calendar)?"
- "¿Dónde viven tus documentos? ¿OneDrive, SharePoint, Google Drive, en tu computadora?"
- "¿Tus reuniones se graban o se transcriben? ¿Con qué? (Teams, Zoom, Meet, Fireflies, otro)".
- "¿Usas algún otro sistema todos los días? (CRM, un sistema escolar, Excel compartidos, Notion, Slack)".

Llena `cerebro/conexiones.md` con estado "pendiente" y, en la columna de qué puede hacer, lo que propondrías. Dile que conectar lo hacen juntos después, con `tutorial/05_Conectar_sistemas.md`, y que nada se conecta sin que lo autorice.

## Bloque E · Tu ritmo (5 min)

- "¿Qué haces cada día, cada semana o cada mes que se repite?" Ejemplos: minutas de juntas, reporte semanal, seguimiento de pendientes con el equipo, preparar presentaciones.
- "De todo eso, ¿qué te quita más tiempo o más te aburre?"

Anota la lista en `cerebro/perfil.md` (sección de lo que quiere delegar). Marca la de mayor tiempo como **candidata a primera receta propia** para la semana 3 (`/convertir-en-skill`).

## Bloque F · Tus reglas (5 min)

- "¿Hay algo que nunca debo hacer? Por ejemplo: mandar correos sin tu visto bueno, escribirle directo a cierta persona, usar cierto tono."
- "¿Qué información es confidencial y NO debe guardarse aquí?" Explica que esta carpeta se respalda en GitHub (privado, pero en internet) y que por eso datos sensibles de terceros se guardan como referencia ("está en tal carpeta de SharePoint"), no como contenido. Ver `.claude/rules/leyes.md`, ley 5.

Cada regla dura se agrega como viñeta en la sección "Cómo trabajar con..." de `CLAUDE.md`. Las de confidencialidad, además, en `.claude/rules/leyes.md` bajo la ley 5.

## Paso final · Construir y mostrar

1. **Llena `CLAUDE.md`:** reemplaza todos los `{{...}}` (nombre, perfil corto de 3 líneas, tabla de frentes, estilo de trabajo). `{{COMANDOS_PROPIOS}}` se reemplaza por una línea vacía (se llena cuando haga sus propias recetas). Borra la primera línea con la marca `ARRANQUE: PENDIENTE` y el aviso que la explica.
2. **Crea cada frente:** copia `frentes/_plantilla/` a `frentes/NN_Nombre/` (sin acentos ni espacios en el nombre de la carpeta, por ejemplo `01_Clientes_Clave`) y llena sus `{{...}}` con lo del bloque B. No borres `_plantilla/`: la usa `/nuevo-frente`.
3. **Llena `cerebro/frentes.md`** con la tabla final.
4. **Escribe `cerebro/plan_30_dias.md`** con las 4 semanas del README adaptadas a ella: qué frente trabaja primero (el 01), qué conocimiento meter en la semana 2 (sus documentos y minutas de ese frente), cuál es su primera receta (la candidata del bloque E) y qué sistemas conectar en la semana 4.
5. **Borra `cerebro/_arranque_progreso.md`.**
6. **Prueba en vivo.** Pídele que te haga una pregunta sobre su trabajo ("¿quién lleva X?", "¿qué frentes tengo?") y contéstala desde el cerebro. Es el momento en que entiende para qué sirvió la entrevista.
7. **Cierra** con 5 líneas como máximo: qué quedó armado, su primera tarea concreta para mañana (la del plan, semana 1) y que todo se guarda solo.

## Lo que no haces

- No inventes frentes, personas ni reglas que no dijo. Si falta un dato, pregúntalo o déjalo vacío.
- No conectes sistemas durante el arranque: solo los anotas.
- No instales nada durante el arranque. La caja de herramientas va después (`/caja-de-herramientas`).
