# 05 · Conecta tus sistemas

Tiempo: 15 minutos por sistema. Recomendado en la semana 4 del plan, cuando ya te sientas cómoda con lo básico.

## Qué es "conectar"

Darle permiso a tu asistente de **leer** tu correo, tu calendario, tus documentos o tus reuniones grabadas. Con eso puede, por ejemplo, hacer la minuta de la junta de hoy sin que le pegues nada, o decirte qué reuniones tienes mañana.

**Tú decides qué conectas y qué puede hacer.** Nada se conecta solo. Y aunque tenga acceso a tu correo, la regla del sistema es que **nunca envía nada sin tu aprobación**.

## Dónde se conecta

Las conexiones se activan en la página de Claude, no en VS Code, y desde ahí funcionan en todos lados.

1. Entra a **https://claude.ai** con tu cuenta.
2. Abajo a la izquierda, clic en tu nombre → **Configuración** (Settings) → **Conectores** (Connectors).
3. Busca el sistema que quieres y aprieta **Conectar**. Te manda a iniciar sesión en ese sistema y a autorizar.
4. Cierra y vuelve a abrir VS Code para que tu asistente lo vea.

> **Si no ves la sección de Conectores o el sistema aparece bloqueado:** en licencias de organización (Team o Enterprise), quien administra la cuenta decide qué conectores están permitidos. Pídeselo a tu área de TI o a quien administra Claude, con el nombre exacto del conector.

## Los más útiles, según lo que uses

| Si usas... | Conecta | Para pedirle cosas como |
|---|---|---|
| Outlook, Teams, OneDrive, SharePoint | **Microsoft 365** | "¿Qué reuniones tengo mañana?", "busca el correo de Laura sobre el presupuesto", "lee el documento X de SharePoint" |
| Gmail, Google Calendar, Drive | **Gmail**, **Google Calendar**, **Google Drive** | Lo mismo, del lado de Google |
| Grabas reuniones con Fireflies | **Fireflies** | "Haz la minuta de mi junta de hoy a las 10" |
| Notion, Slack, Asana, otros | Búscalo en la lista de conectores | Depende del sistema |

## Si tus reuniones se graban en Teams, Zoom o Meet sin conector

Funciona igual, con un paso manual:

1. Al terminar la reunión, descarga la transcripción (en Teams: en el chat de la reunión, "Transcripción", botón de descargar; en Zoom y Meet, junto a la grabación).
2. Arrástrala a la carpeta `bandeja/` de tu cerebro en VS Code.
3. Pídele: **"haz la minuta de la transcripción que dejé en la bandeja"**.

## Después de conectar

Dile a tu asistente: **"Ya conecté Microsoft 365, actualiza mis conexiones y pruébalo"**. Va a anotarlo en `cerebro/conexiones.md` y a hacer una prueba (por ejemplo, leerte tus reuniones de mañana).

## Lo que NO conviene conectar

Sistemas con datos muy sensibles de otras personas (expedientes, calificaciones, salud, nóminas), salvo que tu organización lo haya autorizado expresamente. Ante la duda, pregunta a tu área de TI.

## Siguiente paso

[06 · El día a día](06_Dia_a_dia.md)
