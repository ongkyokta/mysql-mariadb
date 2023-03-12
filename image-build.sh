#!/bin/bash
echo "docker buildx build --platform linux/amd64 --rm -t lukmanbap/mysql:latest ."
docker buildx build --platform linux/amd64 --rm -t lukmanbap/mysql:latest .
