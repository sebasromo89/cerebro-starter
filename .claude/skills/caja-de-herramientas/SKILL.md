---
name: caja-de-herramientas
description: Instala y explica las herramientas universales para producir entregables (presentaciones, PDF, Word, Excel, páginas web, tableros y diseño de interfaz) y verifica que funcionen. Úsalo cuando digan "instala la caja de herramientas", "quiero hacer presentaciones", "¿puedes hacer un PDF / Excel / tablero?", o cuando un pedido necesite una de estas herramientas y no esté instalada.
---

# Caja de herramientas

Son complementos oficiales y públicos que le enseñan al asistente a producir archivos de calidad. No son recetas de ningún negocio en particular: sirven a cualquier persona.

## Qué incluye

| Para qué | Complemento | Qué le puede pedir la persona |
|---|---|---|
| Presentaciones, Word, Excel y PDF | `document-skills` del catálogo `anthropics/skills` | "Hazme una presentación de 8 láminas con esta minuta", "pásalo a PDF", "arma un Excel con estos datos" |
| Páginas web, tableros y prototipos con buen diseño | `frontend-design` del catálogo oficial de Claude Code | "Hazme un tablero de mis pendientes", "una página para presentar el proyecto" |

## Cómo instalar

1. Revisa qué ya está instalado: `claude plugin list`.
2. Agrega el catálogo público de Anthropic e instala los documentos:
   ```
   claude plugin marketplace add anthropics/skills
   claude plugin install document-skills@anthropic-agent-skills
   ```
3. Instala el de diseño de páginas desde el catálogo oficial (ya viene agregado): `claude plugin install frontend-design@claude-plugins-official`.
4. **Los nombres de catálogo cambian con el tiempo.** Si un comando falla, no improvises nombres: corre `claude plugin marketplace list` y revisa la documentación oficial (https://code.claude.com/docs) para encontrar el nombre vigente. Si no lo resuelves, díselo a la persona tal cual.
5. Pídele que **cierre y vuelva a abrir VS Code** para que el asistente cargue lo nuevo.

## Verifica con un caso real

Después de instalar, haz una prueba chica con algo suyo: una presentación de 3 láminas con el `README.md` de su frente 01, o un tablero con su `Backlog.md`. Guárdala en `frentes/NN_Frente/Entregables/`. Si sale bien, anota en `cerebro/conexiones.md` (o en `perfil.md`) que la caja está instalada.

## Reglas para todo entregable

- Fondo claro, legible, sin efectos innecesarios. Primero que se entienda; después que se vea bien.
- Datos y nombres verificados contra el cerebro antes de entregar (`.claude/rules/leyes.md`, ley 6).
- Se guarda en el frente que corresponde, nunca en la raíz.
- Si la persona tiene identidad visual (logo, colores, tipografía), pídesela una vez y guárdala en `cerebro/identidad/` con un `README.md` que diga cómo usarla. Desde ahí la usan todos los entregables.
