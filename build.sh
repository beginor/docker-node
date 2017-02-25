#!/bin/bash
export IMG=beginor/node:6.10.0
docker build -t $IMG .
docker run --rm --interactive --tty $IMG node --version
