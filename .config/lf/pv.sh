#!/usr/bin/env sh

case "$1" in
    *.png|*.jpg|*.jpeg|*.mkv|*.mp4) mediainfo "$1";;
    *.md) glow "$1";;
    *.pdf) pdftotext "$1" -;;
    *)    highlight -O ansi "$1" || cat "$1";;
esac
