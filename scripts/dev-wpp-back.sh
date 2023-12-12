#! /usr/bin/env bash

# Run this script from outside the project, to integrate a dev-wpp project with changes and review modifications

# Exit in case of error
set -e

if [ ! -d ./full-stack-fastapi-postgresql ] ; then
    echo "Run this script from outside the project, to integrate a sibling dev-wpp project with changes and review modifications"
    exit 1
fi

if [ $(uname -s) = "Linux" ]; then
    echo "Remove __pycache__ files"
    sudo find ./dev-wpp/ -type d -name __pycache__ -exec rm -r {} \+
fi

rm -rf ./Webstack - Portfolio Project/\{\{cookiecutter.project_slug\}\}/*

rsync -a --exclude=node_modules ./dev-wpp/* ./Webstack - Portfolio Project/\{\{cookiecutter.project_slug\}\}/

rsync -a ./dev-wpp/{.env,.gitignore,.gitlab-ci.yml} ./Webstack - Portfolio Project/\{\{cookiecutter.project_slug\}\}
