#!/bin/bash

echo "Creating user 'rust'..."
echo "- UID: ${UID}"
echo "- GID: ${GID}"

groupadd -g ${GID} rust
useradd -ms /bin/bash -u ${UID} -g ${GID} rust

$@
