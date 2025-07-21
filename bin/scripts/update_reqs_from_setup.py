import configparser
import textwrap
from pathlib import Path


class PackageMismatchError(Exception):
    pass


def update_edc_requirements():
    """Updates requirements files/scripts to align with setup.cfg.

    Updates:
    - bin/scripts/dev_repos.sh
    - requirements.tests/edc.txt
    - requirements.tests/edc_dev.txt
    - requirements.tests/third_party_dev.txt
    """
    repo_root = Path(__file__).parent.parent.parent.resolve()

    config = configparser.ConfigParser()
    config.read(repo_root / "setup.cfg")

    install_requires = config["options"]["install_requires"]

    setup_packages = []
    for pkg in install_requires.strip().splitlines():
        pkg = pkg.split("=")[0]
        pkg = pkg.split(">")[0]
        pkg = pkg.split("<")[0]
        pkg = pkg.split("~")[0]
        if pkg != "Django":
            setup_packages.append(pkg.strip())

    erikvw_packages = [
        "django-audit-fields",
        "django-crypto-fields",
        "django-multisite2",
        # "django-pylabels",
        "django-revision",
    ]

    clinicedc_packages = [pkg for pkg in setup_packages if pkg.startswith("edc")]

    contrib_packages = [
        "edc-csf",
        "edc-microbiology",
        "edc-microscopy",
    ]

    third_party_packages = [
        pkg
        for pkg in setup_packages
        if pkg not in erikvw_packages and pkg not in clinicedc_packages
    ]

    print(
        f"""\
        {repo_root=}
        {install_requires=}
        {setup_packages=}
        {third_party_packages=}
        {erikvw_packages=}
        {clinicedc_packages=}
        {contrib_packages=}
        """
    )

    reformed_packages = third_party_packages + erikvw_packages + clinicedc_packages
    if reformed_packages != setup_packages:
        raise PackageMismatchError(
            "Error. `reformed_packages` list doesn't match `setup_packages`, "
            "(derived from `installed_packages` in setup.cfg). Got:\n"
            f"{reformed_packages=}\n"
            f"   {setup_packages=}\n"
            f"       Difference={set(reformed_packages) - set(setup_packages)}"
        )

    requirements_dir = repo_root / "requirements.tests"
    with open(requirements_dir / "edc.txt", "w") as f:
        f.write(
            textwrap.dedent(
                """\
                    # Third party packages
                    -r ./third_party_dev.txt

                    # Packages from: https://github.com/erikvw
                """
            )
        )
        f.writelines("\n".join(erikvw_packages))
        f.write("\n\n# Packages from: https://github.com/clinicedc\n")
        f.writelines("\n".join(clinicedc_packages))
        f.write("\n")

    with open(requirements_dir / "edc_dev.txt", "w") as f:
        f.write("# Packages from: https://github.com/erikvw\n")
        for pkg in erikvw_packages:
            f.write(f"https://github.com/erikvw/{pkg}/tarball/develop\n")
        f.write("\n# Packages from: https://github.com/clinicedc\n")
        for pkg in clinicedc_packages:
            f.write(f"https://github.com/clinicedc/{pkg}/tarball/develop\n")

        f.write("\n# Packages from: https://github.com/clinicedc (contrib)\n")
        for pkg in contrib_packages:
            f.write(f"https://github.com/clinicedc/{pkg}/tarball/develop\n")

    third_party_packages.sort()
    with open(requirements_dir / "third_party_dev.txt", "w") as f:
        f.write("# Third party packages\n")
        f.writelines("\n".join(third_party_packages))
        f.write("\n")

    with open(repo_root / "bin" / "scripts" / "dev_repos.sh", "w") as f:
        third_party_packages_url = (
            "https://raw.githubusercontent.com/"
            "clinicedc/edc/develop/requirements.tests/third_party_dev.txt"
        )
        f.write(
            textwrap.dedent(
                f"""\
                    # Install third party packages
                    pip install -r {third_party_packages_url}

                    # Install packages from: https://github.com/erikvw as editable
                """
            )
        )
        for pkg in erikvw_packages:
            f.write(f"pip install -e ../{pkg}\n")

        f.write("\n# Install packages from: https://github.com/clinicedc as editable\n")
        for pkg in clinicedc_packages:
            f.write(f"pip install -e ../{pkg}\n")

        f.write(
            "\n# Install packages from: https://github.com/clinicedc "
            "(contrib) as editable\n"
        )
        for pkg in contrib_packages:
            f.write(f"pip install -e ../{pkg}\n")


if __name__ == "__main__":
    update_edc_requirements()
