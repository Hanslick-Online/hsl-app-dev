#!/bin/bash
rm -rf hsl-app-dev* build_app html xslt
wget https://github.com/Hanslick-Online/hsl-app/archive/refs/heads/dev.zip
unzip dev
mv hsl-app-dev/*.* ./
mv hsl-app-dev/{xslt,html,build_app} .
chmod +x build_app/python/*py build_app/shell/*
rm -rf hsl-app-dev*
