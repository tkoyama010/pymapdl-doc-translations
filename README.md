# Translated docs for pymapdl official document

<p align="center">
   <picture>
      <source media="(prefers-color-scheme: dark)" srcset="https://github.com/ansys/pymapdl/blob/main/doc/source/_static/logo_dark.png">
      <source media="(prefers-color-scheme: light)" srcset="https://github.com/ansys/pymapdl/blob/main/doc/source/_static/logo_light.png">
      <img alt="PyMAPDL Logo" src="https://github.com/ansys/pymapdl/blob/main/doc/source/_static/logo_light.png" width="70%">
   </picture>
</p>

[![pyansys](https://img.shields.io/badge/Py-Ansys-ffc107.svg?logo=data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAIAAACQkWg2AAABDklEQVQ4jWNgoDfg5mD8vE7q/3bpVyskbW0sMRUwofHD7Dh5OBkZGBgW7/3W2tZpa2tLQEOyOzeEsfumlK2tbVpaGj4N6jIs1lpsDAwMJ278sveMY2BgCA0NFRISwqkhyQ1q/Nyd3zg4OBgYGNjZ2ePi4rB5loGBhZnhxTLJ/9ulv26Q4uVk1NXV/f///////69du4Zdg78lx//t0v+3S88rFISInD59GqIH2esIJ8G9O2/XVwhjzpw5EAam1xkkBJn/bJX+v1365hxxuCAfH9+3b9/+////48cPuNehNsS7cDEzMTAwMMzb+Q2u4dOnT2vWrMHu9ZtzxP9vl/69RVpCkBlZ3N7enoDXBwEAAA+YYitOilMVAAAAAElFTkSuQmCC)](https://docs.pyansys.com/)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)
[![Contributor Covenant](https://img.shields.io/badge/Contributor%20Covenant-2.1-4baaaa.svg)](CODE_OF_CONDUCT.md)
[![pre-commit.ci status](https://results.pre-commit.ci/badge/github/pymapdl/pymapdl-doc-translations/main.svg)](https://results.pre-commit.ci/latest/github/pymapdl/pymapdl-doc-translations/main)

This is a project to provide pymapdl official documentation in multiple languages.
This repository is inspired by [sphinx-doc/sphinx-doc-translations](https://github.com/sphinx-doc/sphinx-doc-translations.git).

## URLs

- Documentation pages for each language:

  - 日本語: https://tkoyama010.github.io/pymapdl-docs-dev-ja/

## How to update po files

```
sh ./locale/update.sh
```

After that, you should commit updated po files.

## How to add a language

1. add language to locale/update.sh:

   ```
   - rm -R ja
   - tx pull -l ja
   + rm -R ja de
   + tx pull -l ja,de
   ```

1. update po files

1. commit them
