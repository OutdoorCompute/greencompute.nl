#!/bin/bash

echo "Building Webpages:"

echo -e 'index\ncloud-plugin\ncloud-unit\ngreen-datacenter-bonds\ncontact\norder\njourney\ntechnical-specifications\nwelcome\ndatacenters\nhowto\nblog' | while read PAGE
do
  echo "  $PAGE-content.html > docs/$PAGE.html"

  cat docs/header.html > docs/$PAGE.html
  cat docs/$PAGE-content.html >> docs/$PAGE.html
  cat docs/footer.html >> docs/$PAGE.html
done
