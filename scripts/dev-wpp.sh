#! /usr/bin/env bash

# Exit in case of error
set -e

if [ ! -d ./Webstack - Portfolio Project ] ; then
    echo "Run this script from outside the project, to generate a sibling dev-wpp project with independent git"
    exit 1
fi

rm -rf ./dev-wpp

cookiecutter --no-input -f ./Webstack - Portfolio Project project_name="Dev WPP"
