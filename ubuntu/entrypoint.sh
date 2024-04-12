#!/bin/bash
set -e

export PATH=/root/.cargo/bin:$PATH

echo "PATH: $PATH"

cargo --version

cargo install cargo-deb

cargo-deb --version

cargo b -r

cargo-deb