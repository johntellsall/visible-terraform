#!/usr/bin/env bash

set -euo pipefail # strict mode

terraform providers

# NOTE: ignore in-pipe errors
set +o pipefail

terraform providers schema -json | jq . \
    | grep -E -B1 version