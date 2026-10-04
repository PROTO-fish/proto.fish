#!/bin/sh
# Regenerate all site icons from the master logo. Requires ImageMagick.
set -e
cd "$(dirname "$0")/.."
SRC=brand/logo_proto_splash.png
magick $SRC -resize 512x512 -strip icon-512.png
magick $SRC -resize 192x192 -strip icon-192.png
magick $SRC -resize 180x180 -strip apple-touch-icon.png
magick $SRC -define icon:auto-resize=48,32,16 favicon.ico
