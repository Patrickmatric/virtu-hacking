#!/usr/bin/env python

from setuptools import setup

version = open("files/version.txt").read().strip()
long_description = open("README.md").read().strip()

setup(
    name='virtu-hacking',
    version=version,
    description='Ultimate phishing tool in python with dual tunneling, 77 templates and many more!',
    long_description=long_description,
    long_description_content_type='text/markdown',
    author='Patrickmatric',
    author_email='asaenligne78@gmail.com',
    license="GPLv3",
    url='https://github.com/Patrickmatric/virtu-hacking/',
    scripts=['virtu-hacking'],
    install_requires=["requests", "bs4"]
)
