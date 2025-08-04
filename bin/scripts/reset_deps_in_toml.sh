#!/bin/bash
#
# Usage: bash bin/scripts/reset_deps_in_toml.sh

echo "${BASH_VERSION}"

uv remove Django
uv add Django

mapfile -t deps < requirements.uv/third_party_dev.txt
for item in "${deps[@]}"; do
  uv remove $item
done
for item in "${deps[@]}"; do
  uv add $item
done

mapfile -t deps < requirements.uv/erikvw.txt
for item in "${deps[@]}"; do
  uv remove $item
done
for item in "${deps[@]}"; do
  uv add $item
done


mapfile -t deps < requirements.uv/clinicedc.txt
for item in "${deps[@]}"; do
  uv remove $item
done
for item in "${deps[@]}"; do
  uv add $item
done


echo "Binding edc packages to exact version"
sed '/^[[:space:]]*"edc-/ s/>=/==/' pyproject.toml > tmp.toml && mv tmp.toml pyproject.toml
echo "Done"
