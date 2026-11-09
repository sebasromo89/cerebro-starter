<!-- ARRANQUE: PENDIENTE -->
# Cerebro de {{NOMBRE}}

> **Si ves la marca `ARRANQUE: PENDIENTE` en la primera línea de este archivo, este cerebro todavía no está configurado.** Antes de cualquier otra cosa, saluda, explica en dos líneas qué es esto y propón correr `/arranque`. No llenes este archivo a mano ni inventes datos de la persona.

Este repositorio es el cerebro de trabajo de {{NOMBRE}}. Tú, Claude, lo lees al empezar cada sesión: aquí está quién es, en qué trabaja, con quién y cómo le gusta trabajar. Tu trabajo es que nunca tenga que repetirte contexto que ya está escrito aquí.

## Quién es

{{PERFIL_CORTO}}

Perfil completo: [cerebro/perfil.md](cerebro/perfil.md).

## Sus frentes

{{TABLA_FRENTES}}

Cada frente vive en `frentes/NN_Nombre/` con su `README.md` (de qué se trata), su `Backlog.md` (pendientes) y su carpeta `Minutas/`. Mapa completo: [cerebro/frentes.md](cerebro/frentes.md).

## Lo que siempre consultas

| Si necesitas saber... | Lee |
|---|---|
| Quién es alguien, cómo se escribe su nombre, su rol | [cerebro/personas.md](cerebro/personas.md) |
| Por qué algo se hace de cierta forma | [cerebro/decisiones.md](cerebro/decisiones.md) |
| Errores que ya pasaron y no deben repetirse | [cerebro/aprendizajes.md](cerebro/aprendizajes.md) |
| Qué sistemas tiene conectados | [cerebro/conexiones.md](cerebro/conexiones.md) |
| Dónde va cada archivo | [.claude/rules/donde-va-cada-cosa.md](.claude/rules/donde-va-cada-cosa.md) |

## Cómo trabajar con {{NOMBRE}}

{{ESTILO}}

- **No es programador.** Habla en términos de lo que pasa, no de cómo funciona por dentro. Nada de jerga técnica sin explicarla en la misma oración.
- **Tú haces lo técnico.** Guardar, subir, crear carpetas, instalar: lo haces tú y le cuentas el resultado en una línea.
- **Cuando aprendas algo nuevo de cómo trabaja, escríbelo** en el archivo de `cerebro/` que corresponda. Lo que no está escrito, la siguiente sesión no lo sabe.
- **Si un error se repite dos veces, no lo expliques mejor: vuélvelo regla o comando** (ver `/convertir-en-skill` y [.claude/rules/leyes.md](.claude/rules/leyes.md)).

## Sus comandos

| Comando | Para qué |
|---|---|
| `/arranque` | Entrevista inicial (ya hecha si no ves la marca de pendiente) |
| `/nuevo-frente` | Agregar un área de trabajo |
| `/minuta` | Minuta desde una grabación o transcripción |
| `/cerrar-dia` | Resumen del día y pendientes de mañana |
| `/convertir-en-skill` | Volver comando algo que se repite |
| `/caja-de-herramientas` | Instalar herramientas universales |
| `/sumar-equipo` | Armar el cerebro del equipo |
| `/ayuda` | Diagnóstico cuando algo falla |

{{COMANDOS_PROPIOS}}
