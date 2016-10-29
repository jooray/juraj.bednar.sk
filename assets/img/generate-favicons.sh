#!/bin/sh
SRC="icon-juraj-512x512.png"
convert -resize 152x152 $SRC apple-touch-icon-114x114-precomposed.png
convert -resize 120x120 $SRC apple-touch-icon-120x120-precomposed.png
convert -resize 144x144 $SRC apple-touch-icon-144x144-precomposed.png
convert -resize 152x152 $SRC apple-touch-icon-152x152-precomposed.png
convert -resize 180x180 $SRC apple-touch-icon-180x180-precomposed.png
convert -resize 72x72 $SRC apple-touch-icon-72x72-precomposed.png
convert -resize 76x76 $SRC apple-touch-icon-76x76-precomposed.png
convert -resize 57x57 $SRC apple-touch-icon-precomposed.png
convert -resize 32x32 $SRC favicon-32x32.png
convert -resize 144x144 $SRC msapplication_tileimage.png
convert -resize 192x192 $SRC touch-icon-192x192.png
