#!/usr/bin/env bash

set -euo pipefail # strict mode

if [[ ! -f terraform.tfstate ]]; then
    echo "terraform.tfstate: Doesn't exist"
    exit 0
fi

grep -E '(provider|version|constraints|name)' terraform.tfstate