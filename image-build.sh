#!/bin/bash
echo "docker buildx build --platform linux/amd64 --rm -t <url-registry>/mysql:latest ."
docker buildx build --platform linux/amd64 --rm -t  <url-registry>/mysql:latest .
