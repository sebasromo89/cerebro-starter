---
name: ayuda
description: Diagnóstico y orientación cuando algo no funciona o la persona no sabe cómo pedir algo. Revisa el estado del cerebro (respaldo, conexiones, configuración), explica en lenguaje simple qué pasa y lo arregla o dice exactamente qué hacer. Úsalo cuando digan "ayuda", "no funciona", "algo se rompió", "no sé cómo hacer X", "no se guardó", "¿por qué no puedes ver mi correo?".
---

# Ayuda

La persona probablemente no es técnica y está frustrada. Primero tranquilízala en una línea (casi todo tiene arreglo y su trabajo está guardado), luego diagnostica tú, sin pedirle que corra comandos.

## Si no sabe cómo pedir algo

Pregunta qué quiere lograr (no cómo). Revisa si ya existe una receta para eso en `.claude/skills/` o en la tabla de comandos de `CLAUDE.md`. Si existe, úsala. Si no, hazlo y, si es algo que se va a repetir, ofrece `/convertir-en-skill`.

## Si algo no funciona: revisa en este orden

1. **¿Está el cerebro configurado?** Si `CLAUDE.md` tiene la marca `ARRANQUE: PENDIENTE`, falta `/arranque`.
2. **¿Se está guardando?** `git status` y `git log -5`. Si hay cambios sin subir, intenta subirlos (`git pull --rebase --autostash` y `git push`). Si hay un choque de versiones, resuélvelo conservando el trabajo de ambos lados; nunca descartes cambios sin preguntar.
3. **¿Hay sesión de GitHub?** Si el push pide credenciales o falla por permisos, guía a la persona a iniciar sesión (lo que va a ver en el navegador y qué botón apretar).
4. **¿El conector existe?** Si pide algo de su correo, calendario o documentos y no tienes acceso, revisa `cerebro/conexiones.md` y explícale cómo conectarlo con `tutorial/05_Conectar_sistemas.md`. Si su organización bloquea los conectores, díselo tal cual: eso lo habilita su área de TI.
5. **¿Es un límite de uso?** Si aparece un aviso de límite, es normal: explica que se renueva solo en unas horas.

Consulta `tutorial/10_Problemas_comunes.md`: si el problema no está ahí y lo resolviste, agrégalo al final con su solución en lenguaje simple.

## Cierra

En 3 líneas como máximo: qué pasaba, qué hiciste y si tiene que hacer algo ella. Si el mismo problema ya había pasado antes (búscalo en `cerebro/aprendizajes.md`), aplica la ley 2: propón volverlo regla o comando.
