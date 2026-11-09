#!/usr/bin/env bash
# Hook de cierre: guarda y sube lo trabajado cada vez que Claude termina.
#
# Reglas de diseño:
#   - Imprime UNA línea, o nada si no hubo cambios.
#   - Nunca rompe la sesión: los problemas salen como aviso, no como error.
#   - Solo actúa en main/master. En ramas de trabajo no se mete.
#   - Si se coló un archivo de secretos, no sube nada.

entrada=$(cat 2>/dev/null)
case "$entrada" in
  *'"stop_hook_active":true'*|*'"stop_hook_active": true'*) exit 0 ;;
esac

cd "$(dirname "$0")/.." || exit 0
[ -d .git ] || exit 0

rama=$(git rev-parse --abbrev-ref HEAD 2>/dev/null)
[ "$rama" = "main" ] || [ "$rama" = "master" ] || exit 0

sucio=$(git status --porcelain 2>/dev/null)
[ -z "$sucio" ] && exit 0

if echo "$sucio" | grep -Eq '(^|/)\.env($|[^.])|\.env\.local|credentials.*\.json|token.*\.json'; then
  echo "AVISO: hay un archivo de contraseñas a punto de subirse. NO subí nada. Pídele a Claude: 'revisa qué archivo de secretos se coló'."
  exit 0
fi

n=$(echo "$sucio" | grep -c .)
fecha=$(date +"%Y-%m-%d %H:%M")
quien=$(git config user.name); [ -z "$quien" ] && quien="cerebro"

git add -A >/dev/null 2>&1
git commit -q -m "Trabajo de $quien ($fecha)" >/dev/null 2>&1 || exit 0

# Sin GitHub todavía: queda guardado en la computadora.
git remote get-url origin >/dev/null 2>&1 || { echo "Guardado en tu computadora: $n archivos."; exit 0; }

# Conectada a la plantilla original en vez de a la copia propia: nunca se sube ahí.
case "$(git remote get-url origin 2>/dev/null)" in
  *sebasromo89/cerebro-starter*)
    echo "Guardado en tu computadora: $n archivos. Tu carpeta todavía está conectada a la plantilla, no a tu copia. Pídele a Claude: 'conecta mi cerebro a mi propia copia en GitHub'."
    exit 0 ;;
esac

if ! git pull --rebase --autostash >/dev/null 2>&1; then
  echo "Guardé tus $n cambios en tu computadora, pero chocaron con otros. Pídele a Claude: 'resuelve el choque de versiones'."
  exit 0
fi

if ! git push >/dev/null 2>&1; then
  echo "Guardé tus $n cambios en tu computadora, pero no pude subirlos (revisa tu internet). Se reintenta la próxima vez."
  exit 0
fi

echo "Guardado y respaldado: $n archivos."
exit 0
