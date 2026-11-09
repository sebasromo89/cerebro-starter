# 10 · Algo no funciona

Primero lo primero: **tu trabajo está guardado.** Casi todo tiene arreglo. Para cualquier cosa, el primer paso es escribirle a tu asistente **"/ayuda"** o "algo no funciona" y describir lo que ves. Abajo están los casos más comunes por si quieres entenderlos.

| Lo que ves | Qué pasa | Qué haces |
|---|---|---|
| Al instalar Claude: "Git no encontrado" (Windows) | Falta Git o la computadora no lo ve | Instálalo (guía [01](01_Instalar_VS_Code.md), paso 2) y reinicia la computadora |
| No te deja entrar a Claude con tu correo de trabajo | No tienes licencia asignada | Pídela a quien administra Claude en tu organización |
| Tu asistente te pide contexto que ya le diste | El dato no quedó escrito en el cerebro | Dile "anota esto en mi cerebro para que no te lo vuelva a decir" |
| Te propone el arranque cada vez | El arranque no terminó | Escribe "sigamos con el arranque" |
| "No pude subirlos (revisa tu internet)" | Se guardó en tu computadora pero no en la nube | Se reintenta solo la próxima vez. Si persiste, pídele "revisa por qué no se respalda" |
| "Chocaron con otros" | Alguien del equipo cambió lo mismo | Pídele "resuelve el choque de versiones conservando ambos cambios" |
| "Hay un archivo de contraseñas a punto de subirse" | Se coló un archivo con secretos | Nada se subió. Pídele "revisa qué archivo de secretos se coló" |
| No puede ver tu correo o calendario | No está conectado, o tu organización lo bloquea | Guía [05](05_Conectar_sistemas.md). Si está bloqueado, lo habilita TI |
| "Alcanzaste tu límite de uso" | Tu licencia tiene un tope por periodo | Es normal. Se renueva solo en unas horas |
| Contesta raro o se confunde | La conversación se llenó o se mezclaron temas | Conversación nueva (`/clear`) y "lee X y continúa desde ahí" |
| Pide permiso para cada cosa | Es la configuración de seguridad por defecto | Puedes aprobar con "Sí, y no vuelvas a preguntar" para cosas que no son riesgosas (guardar, crear carpetas) |
| Ves `Dise?o` o cuadritos en vez de acentos en la terminal | La terminal muestra mal los acentos; el archivo está bien | Ignóralo. Abre el archivo en VS Code y verás que está correcto |

## Si nada de esto aplica

Copia exactamente el mensaje de error y pégaselo a tu asistente con "esto apareció cuando intenté X". Si tampoco lo resuelve, contacta a quien te acompañó en la instalación con ese mismo mensaje.

> Si tu asistente resuelve un problema que no estaba en esta tabla, le va a pedir agregarlo aquí. Así la guía mejora con cada persona que la usa.
