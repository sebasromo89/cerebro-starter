---
name: sumar-equipo
description: Arma el cerebro compartido de un equipo a partir de esta misma plantilla, invita a los integrantes y les deja su guía de entrada. También agrega a una persona nueva a un cerebro de equipo que ya existe. Úsalo cuando digan "suma a mi equipo", "quiero que mi equipo trabaje así", "crea el cerebro del equipo", "invita a X" o "entra alguien nuevo al equipo".
---

# Sumar al equipo

**Regla de fondo:** el cerebro personal es de una persona y no se comparte. El equipo trabaja en un cerebro aparte, de equipo, donde todos leen y escriben. Así lo personal sigue siendo personal.

Todo lo técnico lo haces tú. A la persona solo le pides datos y decisiones, en lenguaje simple.

## Caso A · Crear el cerebro del equipo

1. **Pregunta en un mensaje:** nombre del equipo, quiénes son (nombre, rol y correo), y quién va a ser la persona dueña (la que puede invitar y decidir reglas).
2. **Pide el usuario de GitHub de cada integrante.** Si no tienen cuenta, mándales `tutorial/03_GitHub_y_tu_copia.md` (solo la parte de crear la cuenta) y espera.
3. **Crea el repositorio** privado del equipo desde esta plantilla, en la cuenta de la persona dueña:
   `gh repo create <usuario>/cerebro-<equipo> --private --template sebasromo89/cerebro-starter --clone`
   La plantilla es pública: no hace falta que nadie dé acceso para usarla.
   Si `gh` no está instalado o no tiene sesión, guía a la persona para iniciar sesión (`gh auth login`, opción navegador) explicándole qué va a ver en pantalla.
4. **Corre `/arranque` en modo equipo** dentro del repositorio nuevo, con la persona dueña.
5. **Agrega lo propio de un equipo:**
   - `ESTADO_EQUIPO.md` en la raíz: una tabla con cada integrante, en qué está trabajando y qué archivo está tocando. Es para no editar dos personas lo mismo a la vez.
   - `.claude/rules/equipo.md`: quién es quién (nombre, rol, correo, usuario de GitHub), quién decide qué, y las reglas de convivencia: no editar el mismo archivo dos personas a la vez; avisar en `ESTADO_EQUIPO.md`; ante un choque de versiones no forzar nada.
6. **Invita a cada integrante** con permiso de escritura:
   `gh api -X PUT repos/<usuario>/cerebro-<equipo>/collaborators/<usuario-integrante> -f permission=push`
   Diles que les llega un correo de GitHub que tienen que aceptar.
7. **Prepara la guía de entrada de cada integrante:** un mensaje corto, en lenguaje de "qué pedirle a tu Claude", con: la liga al tutorial (pasos 01, 02 y 03), la liga del repositorio del equipo, y su primera tarea real. Redáctalo; la persona dueña lo envía.

## Caso B · Entra alguien nuevo a un equipo que ya existe

Pasos 2, 6 y 7 del caso A, más agregar su fila en `.claude/rules/equipo.md` y en `ESTADO_EQUIPO.md`.

## La primera sesión de cada integrante

Que no sea una explicación: que haga una tarea real. Propuesta:

1. Abre la carpeta del equipo en VS Code y pregúntale a su Claude "¿de qué trata este equipo y qué hay pendiente?". Su asistente ya lo sabe porque lee el mismo cerebro.
2. Hace la minuta de su propia sesión de bienvenida con `/minuta`.
3. Ve que se guardó y subió sola.

## Cómo se les escribe

El equipo probablemente no programa. En cualquier mensaje para ellos: nada de comandos, rutas de archivo ni jerga. Cada instrucción técnica se traduce a qué pedirle a su Claude ("dile a tu Claude: 'trae lo último del equipo'"). Las precauciones se dicen como consecuencias ("lo que guardes aquí lo ve todo el equipo"), y lo que de verdad importa es cuándo detenerse y avisar a la persona dueña.
