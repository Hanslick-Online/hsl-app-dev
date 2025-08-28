#!/bin/bash
rm -rf hsl-app-dev* build_app html xslt
#wget https://github.com/Hanslick-Online/hsl-app/archive/refs/heads/dev.zip
curl -L -o dev.zip https://github.com/Hanslick-Online/hsl-app/archive/refs/heads/dev.zip
#curl -L -o dev.zip https://github.com/Hanslick-Online/hsl-app/archive/refs/heads/44-full-text-search-more-fine-grained-to-enable-context-search.zip
#unzip dev
unzip dev.zip
mv  hsl-app-44-full-text-search-more-fine-grained-to-enable-context-search/ hsl-app-dev
mv hsl-app-dev/*.* ./
mv hsl-app-dev/{xslt,html,build_app} .
chmod +x build_app/python/*py build_app/shell/*
rm -rf hsl-app-dev*
