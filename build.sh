#!/bin/bash

set -euo pipefail

if [[ "${#*}" -lt 2 ]]; then
	echo "usage: build.bash IMAGE_NAME VERSION..." >&2
	exit 1
fi

image=${1}; shift

for version in $*; do
	sed -e "s/VERSION/${version}/" Dockerfile.tmpl | docker build -f- . | tee /dev/stderr | grep 'Successfully built ' | cut -d' ' -f3 |
		while read id; do
			docker tag ${id} ${image}:${version}
			docker push ${image}:${version}
		done
done
