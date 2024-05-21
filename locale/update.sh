#!/bin/sh
# update transifex pot and local po files

set -ex

# required environment variables
# SPHINXINTL_TRANSIFEX_ORGANIZATION_NAME=tkoyama010
# SPHINXINTL_TRANSIFEX_PROJECT_NAME=pymapdl-doc
# TX_TOKEN=...

# pull po files from transifex
cd `dirname $0`
#rm -R pot  # skip this line cause "already unused pot files will not removed" but we must keep these files to avoid commit for only "POT-Creation-Time" line updated. see: https://github.com/sphinx-doc/sphinx/issues/3443
sphinx-build -T -D plot_gallery=0 -b gettext ../pymapdl/doc/source pot
sphinx-intl update-txconfig-resources -p pot -d .
cat .tx/config
tx push -s --skip
rm -R -f ja es
tx pull --silent -f -l ja,es
git checkout .tx/config
