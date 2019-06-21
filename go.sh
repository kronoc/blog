#!/bin/sh
set -eu
rm -rf out
./make.py
rsync -a --delete out/ /srv/conor.net/htdocs/radar
rsync -a --delete files /srv/conor.net/htdocs/radar/
