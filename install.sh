#!/bin/bash
set -e

# Install uv if not present
if ! command -v uv &> /dev/null; then
    curl -LsSf https://astral.sh/uv/install.sh | sh
fi

# Install blueprynt as a tool
uv tool install git+https://github.com/tksmith151/blueprynt.git

echo "Installation complete! Run 'blueprynt --help' to get started"