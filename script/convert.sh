#!/bin/bash
for file in *.otf; do
  fontforge -lang=py -c "font = fontforge.open('$file'); font.generate('${file%.otf}.ttf')"
done

