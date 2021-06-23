# -*- coding: utf-8 -*-
import os
import warnings

from setuptools import find_packages, setup

with open(os.path.join(os.path.dirname(__file__), "README.rst")) as readme:
    README = readme.read()

with open(os.path.join(os.path.dirname(__file__), "VERSION")) as f:
    VERSION = f.read()

install_requires = []
with open(os.path.join(os.path.dirname(__file__), "requirements.txt")) as f:
    for line in f:
        if "https:/" not in line.strip():
            install_requires.append(line.strip())
        else:
            warnings.warn(
                f"Cannot add git+https:// to install_requires. Got `{line}`. "
                "See requirements.txt"
            )


# allow setup.py to be run from any path
os.chdir(os.path.normpath(os.path.join(os.path.abspath(__file__), os.pardir)))

setup(
    name="edc",
    version=VERSION,
    author="Erik van Widenfelt",
    author_email="ew2789@gmail.com",
    packages=find_packages(),
    include_package_data=True,
    url="https://github.com/clinicedc/edc",
    license="GPL license, see LICENSE",
    description="EDC core modules for clinicedc/edc projects.",
    long_description=README,
    zip_safe=False,
    keywords="django edc clinical trials research",
    install_requires=install_requires,
    classifiers=[
        "Environment :: Web Environment",
        "Framework :: Django",
        "Intended Audience :: Developers",
        "Intended Audience :: Science/Research",
        "License :: OSI Approved :: GNU General Public License v3 (GPLv3)",
        "Operating System :: OS Independent",
        "Programming Language :: Python :: 3.7",
        "Topic :: Internet :: WWW/HTTP",
        "Topic :: Internet :: WWW/HTTP :: Dynamic Content",
    ],
    python_requires=">=3.7",
)
