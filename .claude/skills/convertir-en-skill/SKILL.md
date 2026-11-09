---
name: convertir-en-skill
description: Convierte algo que la persona hace seguido en un comando nuevo (una receta) que su asistente ejecuta completo. Entrevista sobre el proceso, escribe la receta, la prueba con un caso real y la registra. Úsalo cuando digan "esto lo hago cada semana", "vuélvelo comando", "crea una receta", "automatiza esto", "quiero que esto se haga solo", o cuando notes que la misma petición se repite por tercera vez.
---

# Convertir un proceso en receta

Una receta es un archivo de instrucciones que el asistente sigue cada vez que se invoca. Lo que la hace buena: **pasos concretos, el criterio de calidad dicho con ejemplos y los errores que ya pasaron escritos como prohibiciones.**

## Paso 1 · Entiende el proceso (una conversación, no un formulario)

Pregunta, en dos o tres mensajes como máximo:

1. **Qué es y cada cuánto.** "Cuéntame la última vez que lo hiciste, paso por paso, como si me lo explicaras a alguien nuevo."
2. **De dónde sale la información** (archivos del cerebro, correo, un sistema, algo que la persona pega).
3. **Cómo se ve bien hecho.** Pide un ejemplo real que le haya gustado. Si existe, es la mejor especificación posible.
4. **Qué sale mal normalmente**, o qué corrige siempre cuando alguien más lo hace.
5. **A dónde va el resultado** y si alguien más lo ve antes.

## Paso 2 · Decide la forma

- **Si es criterio** (redactar, resumir, analizar, decidir): receta en `.claude/skills/<nombre>/SKILL.md`.
- **Si una parte es mecánica y siempre igual** (mover archivos, bajar un reporte, convertir formatos): esa parte va como script en `herramientas/` y la receta lo llama. Un paso mecánico escrito en prosa invita al asistente a improvisarlo distinto cada vez.
- **Si es una regla que debe cumplirse siempre**, no un proceso, no es receta: va en `.claude/rules/`.

## Paso 3 · Escribe la receta

Nombre en minúsculas con guiones, en español y corto (`reporte-semanal`, `seguimiento-equipo`). Estructura:

```
---
name: <nombre>
description: Qué hace en una frase. Cuándo usarla, con las frases textuales que diría la persona ("hazme el reporte", "prepara la junta del lunes").
---

# <Título>

<Para qué sirve y qué distingue un buen resultado de uno malo, en 2 o 3 líneas.>

## Paso 1 · ...
## Paso 2 · ...

## Reglas
- Lo que nunca se hace (los errores del paso 1, punto 4, como prohibiciones).

## Cierre
Qué le reportas a la persona al terminar, en cuántas líneas.
```

La descripción es lo más importante: es lo que el asistente lee para decidir cuándo usar la receta. Incluye las frases reales con que la persona la pediría. Escritura según `.claude/rules/escritura.md`.

## Paso 4 · Pruébala con un caso real

Córrela en ese momento con un caso de verdad, no de juguete. Muéstrale el resultado y ajusta la receta con lo que corrija. **Toda corrección se escribe en la receta, no solo en el resultado:** si no, la próxima vez vuelve a salir igual.

## Paso 5 · Regístrala

- Agrega una fila en la tabla de comandos de `CLAUDE.md` (sección "Sus comandos").
- Si salió de la lista de cosas por delegar de `cerebro/perfil.md`, márcala como hecha.
- Dile cómo invocarla: escribiendo `/<nombre>` o pidiéndolo con sus palabras.

## Cuándo proponerla sin que la pidan

Si notas que la persona te pide lo mismo por tercera vez, o que corrige lo mismo dos veces, propón: "Esto ya lo hicimos tres veces. ¿Lo vuelvo receta para que la próxima sea un comando?".
