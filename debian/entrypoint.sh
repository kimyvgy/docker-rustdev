#!/bin/bash

echo "kimyvgy/rustdev: https://github.com/kimyvgy/docker-rustdev"

echo "Creating user 'rust'..."
echo "- UID: ${UID}"
echo "- GID: ${GID}"

groupadd -g ${GID} rust
useradd -ms /bin/bash -u ${UID} -g ${GID} rust

$@
