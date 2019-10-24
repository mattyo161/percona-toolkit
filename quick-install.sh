#!/usr/bin/env bash

BASEDIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

echo "export PATH=\"${BASEDIR}/bin:\${PATH}\"" >> ~/.bash_profile
