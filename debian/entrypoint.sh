#!/bin/bash

echo "https://github.com/kimyvgy/docker-rustdev"

if [ "${UID}" != "" ] && [ "${GID}" != "" ]; then
  echo "Creating group 'rust' (GID=${GID})"
  groupadd -g ${GID} rust

  echo "Creating user 'rust' (UID=${UID}, GID=${GID})"
  useradd -ms /bin/bash -u ${UID} -g ${GID} rust
fi

$@
