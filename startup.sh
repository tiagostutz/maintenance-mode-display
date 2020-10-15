#!/bin/sh

cd /var/www/html

echo "Replacing anchors..."

echo "FAVICON_URL=$FAVICON_URL"
sed "s|\"BUILD_FAVICON_URL.ICO\"|\"$FAVICON_URL\"|g" -i *.html

echo "LOGO_URL=$LOGO_URL"
sed "s|\"BUILD_LOGO_URL\"|\"$LOGO_URL\"|g" -i *.html

echo "PAGE_TITLE=$PAGE_TITLE"
sed "s|BUILD_PAGE_TITLE|$PAGE_TITLE|g" -i *.html


echo "H1=$H1"
sed "s|BUILD_H1|$H1|g" -i *.html

echo "H2=$H2"
sed "s|BUILD_H2|$H2|g" -i *.html

echo "Starting Nginx server"
nginx -g "daemon off;"
