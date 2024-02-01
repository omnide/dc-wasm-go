#!/usr/bin/env bash
set -eEuo pipefail

echo "Post-create steps"

# DL and install vale styles
/tmp/install/add-vale-styles.sh