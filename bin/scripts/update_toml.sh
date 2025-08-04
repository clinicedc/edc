#!/bin/bash

# Exit on error
set -e

#current_django_dep=$(tomlq -r '.project.dependencies[]' pyproject.toml | grep -E '^[Dd]jango([<>=[:space:]])')
#
#read -rp "What is the Django version [${current_django_dep}]? " new_django_dep
#
#django_dep=${new_django_dep:-$current_django_dep}
#echo "Using Django dependency: $django_dep"

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
# tomlq 'del(.project.dependencies)' pyproject.toml > tmp.toml && mv tmp.toml pyproject.toml

# Loop through and print each dependency name (stripping version constraints)
echo "📦 upgrading deps"
for dep in $deps; do
    name=$(echo "$dep" | sed 's/[<>=!~].*//')
    if [[ "$name" == edc-* ]]; then
        uv remove "${name}"
    elif [[ "$name" =~ ^[Dd]jango$ ]]; then
        echo " "
    else
        uv remove "${name}"
    fi
done

echo "📦 upgrading deps"
for dep in $deps; do
    name=$(echo "$dep" | sed 's/[<>=!~].*//')
    if [[ "$name" == edc-* ]]; then
        uv add "${name}"
    elif [[ "$name" =~ ^[Dd]jango$ ]]; then
        echo " "
    else
        uv add "${name}"
    fi
done

echo " "
echo "Binding edc packages to exact version"
sed '/^[[:space:]]*"edc-/ s/>=/==/' pyproject.toml > tmp.toml && mv tmp.toml pyproject.toml

echo " "
echo "✅  Done. pyproject.toml updated."

uv pip uninstall edc
uv pip freeze > requirements.txt
echo "✅  Done. requirements.txt updated."
