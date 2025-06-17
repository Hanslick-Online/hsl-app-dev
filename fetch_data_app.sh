#!/bin/bash
rm hsl-app-dev.zip
rm -rf hsl-app-dev
wget https://github.com/Hanslick-Online/hsl-app/archive/refs/heads/dev.zip
unzip dev
mv hsl-app-dev/*.* ./
mv hsl-app-dev/xslt/ ./xslt
mv hsl-app-dev/html/ ./html
mv hsl-app-dev/build_app/ ./build_app
rm -rf hsl-app-dev
rm dev.zip
