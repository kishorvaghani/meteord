#!/bin/bash
# Install Wkhtmltopdf
set -e

WKHTMLTOPDF_VERSION=0.12.4
WKHTMLTOPDF_TAR_FILE=wkhtmltox-${WKHTMLTOPDF_VERSION}_linux-generic-amd64.tar.xz

cd /usr/local/share/
curl -L -O https://github.com/wkhtmltopdf/wkhtmltopdf/releases/download/${WKHTMLTOPDF_VERSION}/{WKHTMLTOPDF_TAR_FILE}
tar xvf $WKHTMLTOPDF_TAR_FILE
mv wkhtmltox/bin/wkhtmlto* /usr/bin/

rm $WKHTMLTOPDF_TAR_FILE
