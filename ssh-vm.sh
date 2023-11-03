#!/usr/bin/env bash

set -euo pipefail

ssh -o UserKnownHostsFile=/dev/null -o StrictHostKeyChecking=no -p 10022 guest@localhost
