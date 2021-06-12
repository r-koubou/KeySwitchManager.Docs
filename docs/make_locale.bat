@echo off

pipenv run make html -e SPHINXOPTS="-D language=%1"
