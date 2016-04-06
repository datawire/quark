#!/bin/bash
set -e
set -u
set -o pipefail

echo "--> Installing sample python dependencies..."
pip install -U docopt flask

echo "--> Compiling Franz 1.0 Quark..."
quark install --python franz-1.0.q
quark install --javascript franz-1.0.q

echo "--> Setup complete!"