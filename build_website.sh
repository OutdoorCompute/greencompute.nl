#!/bin/bash

echo "Building Webpages:"

echo -e 'index\nnextgen-cloud\nedge-cloud\ncloud-unit\ncontact\norder\njourney\nfaq\nhowto\nblog' | while read PAGE
do
  echo "  $PAGE-content.html > docs/$PAGE.html"

  cat docs/header.html > docs/$PAGE.html
  cat docs/$PAGE-content.html >> docs/$PAGE.html
  cat docs/footer.html >> docs/$PAGE.html
done
