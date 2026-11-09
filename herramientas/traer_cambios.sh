#!/usr/bin/env bash
# Hook de arranque: trae la última versión del cerebro al abrir Claude.
#
# Se dispara solo. Imprime UNA línea: todo lo que imprime entra al contexto
# de Claude y cuesta tokens; el detalle del pull no le sirve a nadie.

cd "$(dirname "$0")/.." || exit 0
[ -d .git ] || exit 0

# Sin repositorio remoto todavía (antes de subirlo a GitHub): nada que traer.
git remote get-url origin >/dev/null 2>&1 || { echo "Cerebro local (todavía sin GitHub)."; exit 0; }

rama=$(git rev-parse --abbrev-ref HEAD 2>/dev/null)
if [ "$rama" != "main" ] && [ "$rama" != "master" ]; then
  echo "Cerebro: estás en la rama '$rama', no toco nada."
  exit 0
fi

antes=$(git rev-parse --short HEAD 2>/dev/null)
if ! git pull --rebase --autostash >/dev/null 2>&1; then
  echo "Cerebro: no pude traer la última versión (revisa tu internet). Sigues trabajando con la que tienes."
  exit 0
fi
despues=$(git rev-parse --short HEAD 2>/dev/null)

if [ "$antes" = "$despues" ]; then
  echo "Cerebro al día."
else
  n=$(git rev-list --count "$antes..HEAD" 2>/dev/null)
  quien=$(git log "$antes..HEAD" --format="%an" 2>/dev/null | sort -u | paste -sd "," -)
  echo "Cerebro actualizado: $n cambios nuevos de $quien."
fi
exit 0
