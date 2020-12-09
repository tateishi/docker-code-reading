#! /bin/bash

cd code/files

tar \
    --create \
    --directory=config \
    --file=config.tar.gz \
    --gzip \
    --verbose \
    --exclude="*~" \
    .
