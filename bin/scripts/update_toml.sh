#!/bin/bash

# Exit on error
set -e

echo "🐍 Installing / Updating yq:"
pip install -U yq

echo "🧹 Clearing and recreating virtual environment..."
uv venv --clear

echo "✅ Virtual environment recreated."

# Activate the environment
echo "⚡ Activating virtual environment..."
source .venv/bin/activate

# Confirm activation
echo "🐍 Python version in venv:"
python --version

# Read dependencies from [project] section
deps=$(tomlq -r '.project.dependencies[]' pyproject.toml)

# Loop through and print each dependency name (stripping version constraints)
echo "📦 removing and adding back deps"
for dep in $deps; do
    name=$(echo "$dep" | sed 's/[<>=!~].*//')
    if [[ "$name" == edc-* ]]; then
        uv remove "${name}"
        uv add "${name}" --upgrade-package "${name}" --bounds exact
    elif [[ "$name" =~ ^[Dd]jango$ ]]; then
        echo "⚠️ Not updating django"
    else
        uv remove "${name}"
        uv add "${name}" --upgrade-package "${name}"
    fi
done

deps=$(tomlq -r '.project.dependencies[]' pyproject.toml)
django_dep=$(tomlq -r '.project.dependencies[]' pyproject.toml | grep -E '^[Dd]jango([<>=[:space:]])')

echo " "
echo "🚀  Django was left as is: ${django_dep}"
echo "✅  Done. pyproject.toml updated."

uv pip uninstall edc
uv pip freeze > requirements.txt
echo "✅  Done. requirements.txt updated."
