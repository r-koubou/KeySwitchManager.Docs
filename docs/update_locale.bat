@echo off

pipenv run i18n_%1_pot
pipenv run i18n_%1_po
