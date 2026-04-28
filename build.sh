#!/usr/bin/env bash
# Meshtastic BBS Plugin — maxg10/bbs — GPL-3.0
set -e

NAME="bbs"
VERSION=$(python3 -c "import json; print(json.load(open('plugin.json'))['version'])")
OUT="dist/${NAME}-${VERSION}.meshplugin"

mkdir -p dist
rm -f "$OUT"

zip -r "$OUT" plugin.json backend/ frontend/ LICENSE README.md CHANGELOG.md

echo "Built: $OUT"
