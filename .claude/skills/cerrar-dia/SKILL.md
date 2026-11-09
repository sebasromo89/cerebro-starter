---
name: cerrar-dia
description: Cierre del día. Revisa lo que pasó (calendario, reuniones, bandeja y cambios en el cerebro), propone las minutas que faltan, actualiza los backlogs, reparte la bandeja y deja las tres prioridades de mañana en la bitácora. Úsalo cuando digan "cierra el día", "cierre del día", "¿qué hice hoy?", "prepárame mañana" o al final de la jornada.
---

# Cierre del día

Objetivo: en 10 minutos, que la persona se vaya sabiendo qué quedó hecho, qué quedó pendiente y con qué empieza mañana, y que su cerebro quede al día.

## Paso 1 · Junta lo que pasó hoy

Con lo que esté disponible, sin pedir permisos nuevos:

- **Calendario** (si hay conector en `cerebro/conexiones.md`): reuniones del día.
- **Reuniones grabadas** (si hay conector): transcripciones de hoy.
- **El cerebro:** archivos que cambiaron hoy (`git log --since=midnight --name-only`).
- **La bandeja:** todo lo que hay en `bandeja/`.

Si no hay conectores, pregúntale en un mensaje: "¿Qué reuniones tuviste hoy y qué pasó en cada una? Contéstame como hables".

## Paso 2 · Minutas pendientes

Por cada reunión de hoy que no tenga minuta en su frente, propón hacerla. Si dice que sí, corre `/minuta` con cada una. Si no hay transcripción, ofrece una minuta corta con lo que te cuente, marcada como "de memoria".

## Paso 3 · Reparte la bandeja

Cada cosa de `bandeja/` va a su frente (`.claude/rules/donde-va-cada-cosa.md`). Si no es claro a cuál, pregunta. Si no encaja en ninguno y se va a repetir, propón `/nuevo-frente`.

## Paso 4 · Backlogs al día

Recorre los `Backlog.md` de los frentes que se movieron hoy:

- Lo que se hizo pasa a "Hecho" con la fecha.
- Lo que se acordó hoy y no estaba entra a "Ahora".
- Lo vencido se señala: pregunta si se mueve de fecha o se suelta.

## Paso 5 · La bitácora

Escribe `cerebro/bitacora/AAAA-MM-DD.md`:

```
# AAAA-MM-DD

## Lo que pasó
Una línea por reunión o avance relevante, con su frente.

## Decisiones
(si las hubo; las que no deben volver a discutirse van también a cerebro/decisiones.md)

## Mañana, en este orden
1. ...
2. ...
3. ...

## Ojo
Lo vencido o en riesgo.
```

Las tres prioridades salen de lo vencido, lo que vence mañana y lo que la persona dijo que importa. Máximo tres.

## Paso 6 · Cierra

Muestra solo la sección "Mañana, en este orden" y "Ojo". Todo lo demás ya quedó escrito.

## Para automatizarlo

Si la persona quiere que corra sola cada tarde, ver la sección de tareas programadas en `tutorial/06_Dia_a_dia.md`. Sin conectores, el cierre automático no tiene de dónde leer: primero conectar calendario y reuniones.
