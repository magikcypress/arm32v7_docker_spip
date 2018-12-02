#!/bin/bash

VERSION=$1
IMAGE=spip
TARGET=magikcypress/$IMAGE:$VERSION

if [[ -z "$VERSION" ]]; then
  echo "Usage: $0 <version>"
  exit 1
fi

if [ $VERSION = "latest" ]; then
  sudo docker build -t $TARGET 3.2
  exit 1;
fi

sudo docker build -t $TARGET $VERSION
exit 1;