#!/usr/bin/env bash

set -euo pipefail

mkdir -p mount
sshfs -o UserKnownHostsFile=/dev/null -o StrictHostKeyChecking=no -p 10022 guest@localhost: mount
