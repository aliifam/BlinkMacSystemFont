#!/bin/bash
shopt -s nullglob

# Mengonversi nama file dalam folder saat ini menjadi lowercase
for file in *; do
  if [ -f "$file" ]; then
    lowercase_name=$(echo "$file" | tr '[:upper:]' '[:lower:]')
    mv -i "$file" "$lowercase_name"
  fi
done
