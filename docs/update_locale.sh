#!/bin/bash

pipenv run i18n_${1}_pot
pipenv run i18n_${1}_po
