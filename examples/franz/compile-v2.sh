#!/bin/bash
set -e
set -u
set -o pipefail

echo "--> Compiling Franz 2.0 Quark..."
quark install --python franz-2.0.q
quark install --javascript franz-2.0.q

echo "--> Setup complete!"
