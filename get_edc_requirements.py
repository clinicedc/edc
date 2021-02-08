import requests
import json

with open("requirements.txt", "r") as f:
    for line in f:
        if line.startswith("edc-"):
            pkgname = line.split('==')[0]
            r = requests.get(f"https://pypi.org/pypi/{pkgname}/json")
            try:
                print(f"{pkgname}=={r.json()['info']['version']}")
            except json.JSONDecodeError as e:
                print(pkgname, str(e))
