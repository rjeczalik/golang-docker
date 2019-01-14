#!/bin/bash

set -e

# Jenkins' trick for daemon mode.
if [[ ${#@} -eq 1 && ${1} == "cat" ]]; then
	while true; do sleep 60; done
fi

exec "${@}"
