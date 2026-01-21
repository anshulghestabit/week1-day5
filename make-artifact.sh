#!/bin/bash

mkdir -p artifacts
TIMESTAMP=$(date +%s)
TAR_FILE="artifacts/build-$TIMESTAMP.tgz"

tar -czf "$TAR_FILE" src/ config.json package.json
sha256sum "$TAR_FILE" > "$TAR_FILE.sha256"
echo "Build created: $TAR_FILE"
