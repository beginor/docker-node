#!/bin/bash
export IMG=beginor/node:6.9.5
docker build -t $IMG .
docker run --rm --interactive --tty $IMG node --version
