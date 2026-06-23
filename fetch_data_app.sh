#!/bin/bash
if [ $# -eq 0 ]; then
  BRANCH=dev
else
  BRANCH="$1"
fi
echo ${BRANCH}
rm -rf hsl-app-* build_app html xslt
#wget https://github.com/Hanslick-Online/hsl-app/archive/refs/heads/dev.zip
curl -L -o ${BRANCH}.zip https://github.com/Hanslick-Online/hsl-app/archive/refs/heads/${BRANCH}.zip
#curl -L -o dev.zip https://github.com/Hanslick-Online/hsl-app/archive/refs/heads/44-full-text-search-more-fine-grained-to-enable-context-search.zip
#unzip dev
unzip ${BRANCH}.zip
#mv  hsl-app-44-full-text-search-more-fine-grained-to-enable-context-search/ hsl-app-${BRANCH}
mv hsl-app-${BRANCH}/*.* ./
mv hsl-app-${BRANCH}/{saxon,xslt,html,build_app} .
chmod +x build_app/python/*py build_app/shell/*
rm -rf hsl-app-${BRANCH}*
