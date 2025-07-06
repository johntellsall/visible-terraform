#!/usr/bin/env bash

set -euo pipefail # strict mode

rg '(provider|version|constraints)' .terraform.lock.hcl