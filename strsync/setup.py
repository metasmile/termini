# -*- coding: utf-8 -*-
"""
    strsync - Automatically translate and synchronize .strings files from defined base language.
    Copyright (c) 2015 metasmile cyrano905@gmail.com (github.com/metasmile)

    repo : https://github.com/metasmile/strsync
"""
import codecs
from setuptools import setup

setup(
    name="strsync",
    version="1.0.3",
    packages=[
        'strsync',
    ],
    entry_points = {
        "console_scripts": ['strsync = strsync.strsync:main']
    },
    author="Metasmile @ StellarStep, Inc.",
    author_email="cyrano905@gmail.com",
    description="strsync - Automatically translate and synchronize localizable resource files from defined base language for Xcode.",
    long_description=codecs.open(
        'README.rst', encoding='UTF-8'
    ).read(),
    license="MIT",
    keywords="translation microsoft strsync strings localizable l10n i18n ios xcode osx mac",
    url="https://github.com/metasmile/strsync",
    include_package_data=True,
    classifiers=[
        "Development Status :: 5 - Production/Stable",
        "Intended Audience :: Developers",
        "License :: OSI Approved :: MIT License",
        "Natural Language :: English",
        "Operating System :: OS Independent",
        "Topic :: Software Development :: Internationalization",
        "Topic :: Utilities",
        "Programming Language :: Python :: 3",
        "Programming Language :: Python :: 2",
    ],
    install_requires=[
        'microsofttranslator',
        'chardet',
        'requests >= 1.2.3',
        'six',
    ]
)
