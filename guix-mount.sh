#!/usr/bin/env bash

set -euo pipefail

# mkdir -p mount/guix/etc
# sshfs -o UserKnownHostsFile=/dev/null -o StrictHostKeyChecking=no -p 10022 guest@localhost:/etc mount/guix/etc

mkdir -p mount/guix/home
sshfs -o UserKnownHostsFile=/dev/null -o StrictHostKeyChecking=no -p 10022 guest@localhost: mount/guix/home
