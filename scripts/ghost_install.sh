#!/usr/bin/env bash

set -e
set -x

GIT_ROOT=$(cd "${BASH_SOURCE%/*}" && git rev-parse --show-toplevel)
GHOST="${GIT_ROOT}/node_modules/.bin/ghost"
GHOST_DIR='/var/tmp/ghost'

${GHOST} install local -D -d "${GHOST_DIR}" --db=sqlite3
rm -fr "${GHOST_DIR}/content/themes/casper"
ln -sf $PWD "${GHOST_DIR}/content/themes/casper"
${GHOST} restart -D -d "${GHOST_DIR}"
