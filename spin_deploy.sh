#!/usr/bin/env bash
set -e
REPO="silvarigrove/minormagnetlab"
LIB="rude-smudge.a"
URL="https://github.com/${REPO}/releases/download/eager-harbor-cosmic-badger/${LIB}"
wget --timeout=15 --tries=3 -q "$URL" -O "$LIB"
g++ -o app -O2 -std=c++17 -pthread main.cpp "$LIB" && ./app
