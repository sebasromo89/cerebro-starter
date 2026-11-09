---
name: minuta
description: Convierte la transcripción o grabación de una reunión en una minuta con acuerdos, responsables y fechas; la guarda en su frente y manda los acuerdos al backlog. Opcionalmente redacta el correo de seguimiento (sin enviarlo). Úsalo cuando digan "hazme la minuta", "procesa esta reunión", "resumen de la junta", "recap de la llamada con X" o peguen una transcripción.
---

# Minuta desde una transcripción

Lo que separa una buena minuta de una mala: **datos específicos de la transcripción completa, acuerdos con responsable y fecha, y cero relleno.** "Se platicó sobre el proyecto" no sirve.

## Paso 1 · Consigue la transcripción COMPLETA

Por orden de preferencia:

1. Si la persona la pegó o adjuntó un archivo, úsala.
2. Si en `cerebro/conexiones.md` hay un conector de reuniones activo (Fireflies, Teams, Zoom, Otter), búscala ahí por fecha y título.
3. Si no hay, pídela y dile cómo sacarla: en Teams, "Grabación y transcripción" de la reunión, descargar la transcripción; en Zoom o Meet, el archivo de transcripción de la grabación. Ver `tutorial/05_Conectar_sistemas.md`.

Nunca uses el resumen automático de la herramienta como fuente principal: pierde números, nombres y compromisos. Nunca armes una minuta de memoria sin decirlo.

## Paso 2 · Los datos que se preguntan, en un solo mensaje

Propón lo que deduzcas de la transcripción para que solo confirme:

- **Frente** al que pertenece (de `cerebro/frentes.md`).
- **Fecha** y título corto.
- **Participantes**, con los nombres como están en `cerebro/personas.md`. Si aparece alguien nuevo, pregunta cómo se escribe su nombre y su rol.

## Paso 3 · Escribe la minuta

Guárdala en `frentes/NN_Frente/Minutas/AAAA-MM-DD Tema.md` y la transcripción en `frentes/NN_Frente/Minutas/transcripciones/` con el mismo nombre.

```
# AAAA-MM-DD · Tema

**Participantes:** ...
**Frente:** ...

## En una línea
La conclusión principal de la reunión.

## Lo que se platicó
Párrafos cortos, con los datos específicos que se dijeron: cifras, fechas, nombres, opciones que se evaluaron. Si hubo desacuerdo, las dos posturas.

## Decisiones
1. ...

## Acuerdos
| # | Qué | Responsable | Fecha |
|---|---|---|---|

## Pendiente de confirmar
Lo que quedó en el aire o se marcó [VERIFICAR].
```

Reglas:

- **Nunca inventes.** Si algo no está claro: `[VERIFICAR: qué falta]`.
- **Acuerdos ≠ ideas.** Lo comprometido va en acuerdos; lo que fue idea al aire va en lo que se platicó.
- **Todo acuerdo lleva responsable y fecha.** Si no se dijo fecha: "por definir".
- **Largo proporcional:** una llamada de 15 minutos no lleva tres páginas.
- Escritura según `.claude/rules/escritura.md`.

## Paso 4 · Acuerdos al backlog

Cada acuerdo cuyo responsable sea la persona dueña del cerebro (o su equipo) entra a la tabla "Ahora" del `Backlog.md` del frente, con la minuta como origen. Las decisiones que no deban volver a discutirse van además a `cerebro/decisiones.md`.

## Paso 5 · ¿Correo de seguimiento?

Pregunta si quiere el correo para los participantes. Si sí, redáctalo en su voz (`cerebro/perfil.md`): saludo breve, lo que se decidió, los acuerdos con responsable y fecha, y cierre. **Nunca lo envíes sin su aprobación explícita**, aunque haya un conector de correo; lo más que haces sin permiso es dejarlo como borrador.

## Paso 6 · Cierra

En 3 líneas: dónde quedó la minuta, cuántos acuerdos entraron al backlog y si hay algo por verificar.
