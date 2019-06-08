#!/bin/bash
# A bare-bones command-line client for the baudelaire-whitespace "web service".
# USAGE: $0 <word>

word="$1"
input="$word"$'\n'  # Input must be terminated with a newline.

curl -G \
    -H 'x-api-key: dh4SmmlQBm4cuKvj4Mlx37FgaEx0Nhtd7GYk8WFF' \
    --data-urlencode "input=$input" \
    'https://264twkfxs7.execute-api.eu-central-1.amazonaws.com/default/baudelaire-whitespace'
