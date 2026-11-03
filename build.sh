#!/usr/bin/env bash
# Genera index.html (documento completo) a partir de src/elite.html
set -e
cd "$(dirname "$0")"
{
  echo '<!doctype html>'
  echo '<html lang="es">'
  echo '<head>'
  echo '<meta charset="utf-8">'
  echo '<meta name="viewport" content="width=device-width, initial-scale=1, viewport-fit=cover">'
  echo '<style>[hidden]{display:none!important}body{margin:0}img{max-width:100%}</style>'
  echo '</head>'
  echo '<body>'
  cat src/elite.html
  echo '</body>'
  echo '</html>'
} > index.html
echo "index.html generado"
