#!/bin/sh
source ${HOME}/.config/blog
set -eu
rm -rf out
./make.py
rsync -a --delete out/ ${BLOG_HOST}:${BLOG_PATH}
rsync -a --delete files ${BLOG_HOST}:${BLOG_PATH}/
rsync -a --delete images ${BLOG_HOST}:${BLOG_PATH}/
