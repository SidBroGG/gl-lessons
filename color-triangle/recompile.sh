#!/usr/bin/env bash

set -e

BUILD_DIR="build"
COMPILE_DB="compile_commands.json"

echo "Removing old $BUILD_DIR directory and $COMPILE_DB..."
rm -rf "$BUILD_DIR" "$COMPILE_DB"

echo "Creating new $BUILD_DIR directory..."
mkdir -p "$BUILD_DIR"
cd "$BUILD_DIR"

echo "Generating new compile_commands.json with CMake..."
cmake -DCMAKE_EXPORT_COMPILE_COMMANDS=ON ..

echo "Creating symlink to compile_commands.json in the project root..."
ln -sf "$BUILD_DIR/$COMPILE_DB" ../"$COMPILE_DB"

echo "Done."

