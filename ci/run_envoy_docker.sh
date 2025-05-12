#!/usr/bin/env bash

# Run a CI build/test target, e.g. docs, asan.

set -e

echo "hello world"
env|rev

echo $(pwd)

mkdir -p /home/runner/work/_temp/envoy/arm64/bin/ || echo "no create"
echo "hello world" > /home/runner/work/_temp/envoy/arm64/bin/release.arm64 || echo "no write"

mkdir -p /home/runner/work/_temp/envoy/x64/bin/ || echo "no create"
echo "hello world" > /home/runner/work/_temp/envoy/x64/bin/release.x64 || echo "no write"