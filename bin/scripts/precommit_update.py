#!/usr/bin/env python
#
# For each repo, update pre-commit-config.yaml and push
#
# skips updating isort. Keep isort pinned at 5.13.2 until issues with 6.0 are resolved.
#

import argparse
import os
import subprocess  # nosec #B607

parser = argparse.ArgumentParser(description="")
parser.add_argument(
    "path",
    type=str,
    nargs="?",
    default="",
    help="Path to repos. Default is current directory",
)
parser.add_argument(
    "prefix",
    type=str,
    nargs="?",
    default="edc-",
    help="Directory prefix",
)
args = parser.parse_args()

path = args.path or os.getcwd()
prefix = args.prefix or "edc-"

print(path)

os.chdir(os.path.expanduser(path))

base_dir = os.getcwd()

repos = [
    d
    for d in os.listdir(base_dir)
    if d.startswith(prefix)
    and os.path.isdir(d)
    and os.path.isdir(os.path.join(d, ".git"))
    and os.path.isfile(os.path.join(d, ".pre-commit-config.yaml"))
]
repos.sort()

print(f"Found {len(repos)} repos:")
print(", ".join(repos))
print("")

for repo in repos:
    repo_path = os.path.join(base_dir, repo)
    precommit_path = os.path.join(repo_path, ".pre-commit-config.yaml")

    print(f"**** {repo} ****")

    subprocess.run(["git", "pull"], cwd=repo_path)  # nosec #B607

    subprocess.run(
        [
            "pre-commit",
            "autoupdate",
            "--repo",
            "https://github.com/PyCQA/bandit",
            "--repo",
            "https://github.com/psf/black",
            "--repo",
            "https://github.com/pycqa/flake8",
            "--repo",
            "https://github.com/pre-commit/pre-commit-hooks",
            "--repo",
            "https://github.com/adrienverge/yamllint",
            "--repo",
            "https://github.com/kynan/nbstripout",
            "--repo",
            "https://github.com/rstcheck/rstcheck",
        ],
        cwd=repo_path,
        check=True,
    )  # nosec #B607

    subprocess.run(["git", "add", ".pre-commit-config.yaml"], cwd=repo_path)  # nosec #B607
    subprocess.run(
        ["git", "commit", "-m", "Update pre-commit-config.yaml"], cwd=repo_path
    )  # nosec #B607
    subprocess.run(["git", "push"], cwd=repo_path)  # nosec #B607
    subprocess.run(["pre-commit", "run", "--all-files"], cwd=repo_path)  # nosec #B607
