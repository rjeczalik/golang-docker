#!/bin/bash

set -euo pipefail

curl -sSL https://registry.hub.docker.com/v1/repositories/golang/tags | jq -r .[].name | sed -rn 's/^([0-9]+\.[0-9]+\.[0-9]+)$/\1/p'
