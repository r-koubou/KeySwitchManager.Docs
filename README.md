# KeySwitchManager.Docs

[KeySwitchManager's](https://github.com/r-koubou/KeySwitchManager) document codes which powered by Sphinx.

## Deployment

- [Japanese](https://ja-keyswitchmanager.rtfd.io/)
- [English](https://keyswitchmanager.rtfd.io/)

## Read the Docs Project site

- [Japanese](https://readthedocs.org/projects/ja-keyswitchmanager/)
- [English](https://readthedocs.org/projects/keyswitchmanager/)

----

## Requirements

- python 3.x
- pipenv

## Rebuild the environment

```bash
python -m pip install pipenv
pipenv install
```

----

## Update i18n files

Default languege is Japanese.

(see: `source/locale/`)

### English

```bash
pipenv run make gettext
pipenv run sphinx-intl update -p build/gettext -l en
```

----

## Build (En)

```bash
cd docs/
./make_locale_en.sh
```

## Build (Ja)

```bash
cd docs/
pipenv run make html
```
