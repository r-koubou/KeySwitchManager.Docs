#!/bin/bash

pipenv run make gettext
pipenv run sphinx-intl update -p build/gettext -l en
