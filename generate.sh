#!/bin/bash -x

if [ -d generated ]
then
  rm -rf generated/
fi
mkdir generated

protoc \
  --plugin=protoc-gen-js_service=./node_modules/.bin/protoc-gen-js_service \
  --plugin=protoc-gen-ts=./node_modules/.bin/protoc-gen-ts \
  --js_out=import_style=commonjs,binary:generated \
  --ts_out=service=true:generated \
  --js_service_out=generated \
  -I ./protos protos/*.proto
